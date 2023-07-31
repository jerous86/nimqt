import options
import strutils
import nre
import strformat
import tables
import sets

import mathexpr

const
    # B3 --> column B, fourth row
    numRows* = 99+1
    numCols* = int('Z')-int('A')+1
    
type
    Sheet* = array[numRows, array[numCols, Cell]]
    Cell* = object
        fm*:string
        dispValue*:tuple[ok:string, error:string]
        revDeps: Table[CellPos,int] # number of references to this cell
            # It means that if this cell is updated, we must also update revDeps.keys
            # In the code, we make sure that revDeps[*]>0.
    CellPos* = object
        r*,c*:int

func `$`*(p:CellPos):string = &"{char(p.c+int('A'))}{p.r}"

func toCellPos(pos:string):CellPos = CellPos(c:int(pos[0].toUpperAscii)-int('A'), r:pos[1..^1].parseInt)
func isValid(p:CellPos):bool = p.r>=0 and p.r<numRows and p.c>=0 and p.c<numCols
template get*(sheet:Sheet, pos:CellPos):Cell = sheet[pos.r][pos.c]

func toUserString*(v: tuple[ok:string, error:string]):string =
    if v.error.len>0: "ERROR "&v.error
    else: v.ok

func `$`*(sheet:Sheet):string =
    var res:seq[string]
    res.add "[SHEET]"
    for r in 0..<numRows:
        for c in 0..<numCols:
            let
                pos=CellPos(r:r,c:c)
                cell=sheet.get(pos)
            if cell.fm.len>0:
                res.add &"{pos}: FM:{cell.fm} DISP:{cell.dispValue} (revDeps: {cell.revDeps})"
    res.add "[/SHEET]"
    res.join("\n")


let e = newEvaluator()
proc setFormula*(sheet:var Sheet, cellPos:CellPos, newFm:string) =
    func listCellReferences(fm:string): seq[string] = fm.findAll(re("[a-zA-Z][0-9]{1,2}"))
    
    # Calculates a new value. It assumes that all dependent values have been calculated already
    proc calc(sheet:var Sheet, fm:string, origCell:CellPos): tuple[ok:string, error:string] =
        result.ok=fm
        for cellPosStr in fm.listCellReferences:
            let cellPos=cellPosStr.toCellPos
            if not cellPos.isValid:
                return (ok:"", error: &"{origCell}: Invalid ref '{cellPosStr}' in fm '{fm}'")
            
            let res=sheet.get(cellPos).dispValue
            if res.error.len>0:
                return res
            result.ok=result.ok.replace(cellPosStr, res.ok)
        result.ok = $e.eval(result.ok)
    
    # This function updates a cell's reverse dependencies. At the same time, it will check
    # that there are no cycles.
    var updatedDeps:HashSet[CellPos]
    proc recalcDependencies(sheet:var Sheet, pos:CellPos) =
        if pos in updatedDeps:
            sheet.get(pos).dispValue=(ok:"", error: &"Cycle detected in {pos}")
            return
        updatedDeps.incl pos
        
        for revDep in sheet.get(pos).revDeps.keys:
            sheet.get(revDep).dispValue=sheet.calc(sheet.get(revDep).fm, pos)
            sheet.recalcDependencies(revDep)
    
    func updateRevDeps(sheet:var Sheet, fm:string, add:int) =
        for refPosStr in fm.listCellReferences:
            let refPos=refPosStr.toCellPos
            if not refPos.isValid:
                sheet.get(refPos).dispValue = (ok:"", error: &"{cellPos}: Invalid ref to {refPosStr} = {refPos}")
                return
            
            if not sheet.get(refPos).revDeps.hasKey(cellPos):
                sheet.get(refPos).revDeps[cellPos]=0
            sheet.get(refPos).revDeps[cellPos].inc add
            if sheet.get(refPos).revDeps[cellPos]==0:
                sheet.get(refPos).revDeps.del cellPos
    
    sheet.updateRevDeps sheet.get(cellPos).fm, -1
    sheet.get(cellPos).fm=newFm
    sheet.updateRevDeps sheet.get(cellPos).fm, +1
    sheet.get(cellPos).dispValue=sheet.calc(newFm, cellPos)
    sheet.recalcDependencies(cellPos)
    
proc setFormula*(sheet:var Sheet, pos:string, newFm:string) = sheet.setFormula(pos.toCellPos, newFm)

assert $("A0".toCellPos)=="A0", $("A0".toCellPos)
assert $("A1".toCellPos)=="A1", $("A1".toCellPos)
assert $("B2".toCellPos)=="B2", $("B2".toCellPos)

var defaultSheet*:Sheet
defaultSheet.setFormula("A1", "1")
defaultSheet.setFormula("A2", "2")
defaultSheet.setFormula("A3", "3")
defaultSheet.setFormula("A4", "4")
defaultSheet.setFormula("A5", "5")

defaultSheet.setFormula("B1", "A1")
defaultSheet.setFormula("B2", "A2+B1")
defaultSheet.setFormula("B3", "A3+B1")
defaultSheet.setFormula("B4", "A4+B1")
defaultSheet.setFormula("B5", "A5+B1")

when isMainModule:
    echo defaultSheet
    defaultSheet.setFormula("A1", "2000"); echo defaultSheet
    #defaultSheet.setFormula("B2", "200"); echo defaultSheet
    #defaultSheet.setFormula("B2", "B2000"); echo defaultSheet
