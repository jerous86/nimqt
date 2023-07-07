import options
import strutils
import nre
import strformat
import sequtils
import tables
import sets

const
    # B3 --> column B, fourth row
    numRows=99+1
    numCols=int('Z')-int('A')+1
    
type
    Sheet = array[numRows, array[numCols, Cell]]
    Cell = object
        fm:string
        dispValue:tuple[ok:string, error:string]
        revDeps: Table[CellPos,int] # number of references to this cell
    CellPos = object
        r,c:int

func `$`(p:CellPos):string = &"{char(p.c+int('A'))}{p.r}"

template get(sheet:Sheet, pos:CellPos):Cell = sheet[pos.r][pos.c]
func `$`(sheet:Sheet):string =
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


func toCellPos(pos:string):CellPos = CellPos(c:int(pos[0].toUpperAscii)-int('A'), r:pos[1..^1].parseInt)
func isValid(p:CellPos):bool = p.r>=0 and p.r<numRows and p.c>=0 and p.c<numCols

func mathEval(str:string): string =
    let tokens=str.findAll(re"[0-9.]+|[+-]")
    #debugecho str,"->",tokens
    var
        res=(try: tokens[0].parseFloat except: 0.0)
        i=0
    while i<tokens.len:
        case tokens[i]
        of "+": res+=tokens[i+1].parseFloat; i.inc 2
        of "-": res+=tokens[i+1].parseFloat; i.inc 2
        else: i.inc
    $res
    
func setFormula(sheet:var Sheet, cellPos:CellPos, newFm:string) =
    # Calculates a new value. Assumes all values are up-to-date (except the cell from which fm originates)
    func calc(sheet:Sheet, fm:string, origCell:CellPos): tuple[ok:string, error:string] =
        let rgxCell=re"[A-Z][0-9]+"
        result.ok=fm
        for cellPosStr in fm.findAll(rgxCell):
            let cellPos=cellPosStr.toCellPos
            if not cellPos.isValid:
                return (ok:"", error: &"{origCell}: Invalid ref '{cellPosStr}' in fm '{fm}'")
            let res=sheet.get(cellPos).dispValue
            if res.error.len>0:
                return res
            result.ok=result.ok.replace(cellPosStr, res.ok)
        result.ok=result.ok.mathEval

    func listCellReferences(fm:string): seq[string] = fm.findAll(re("[a-zA-Z][0-9]{1,2}"))
    
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
    
    let oldRevDeps=sheet.get(cellPos).revDeps
    sheet.updateRevDeps sheet.get(cellPos).fm, -1
    
    sheet.get(cellPos).fm=newFm
    
    sheet.updateRevDeps sheet.get(cellPos).fm, +1
    let newRevDeps=sheet.get(cellPos).revDeps
    # TODO detect cycles
        
    if cellPos in sheet.get(cellPos).fm.listCellReferences.mapIt(it.toCellPos):
        sheet.get(cellPos).dispValue=(ok:"", error: &"{cellPos}: Formula contains reference to self!")
    else:
        sheet.get(cellPos).dispValue=sheet.calc(newFm, cellPos)
        
        for revDep in concat(oldRevDeps.keys.toSeq, newRevDeps.keys.toSeq).toHashSet:
            sheet.get(revDep).dispValue=sheet.calc(sheet.get(revDep).fm, revDep)
    
    
func setFormula(sheet:var Sheet, pos:string, newFm:string) = sheet.setFormula(pos.toCellPos, newFm)

assert $("A0".toCellPos)=="A0", $("A0".toCellPos)
assert $("A1".toCellPos)=="A1", $("A1".toCellPos)
assert $("B2".toCellPos)=="B2", $("B2".toCellPos)

var sheet:Sheet
sheet.setFormula("A1", "1")
sheet.setFormula("A2", "2")
sheet.setFormula("A3", "3")
sheet.setFormula("A4", "4")
sheet.setFormula("A5", "5")

sheet.setFormula("B1", "A1")
sheet.setFormula("B2", "A2+B1")
sheet.setFormula("B3", "A3+B1")
sheet.setFormula("B4", "A4+B1")
sheet.setFormula("B5", "A5+B1")

echo sheet

sheet.setFormula("B2", "200"); echo sheet
sheet.setFormula("B2", "B2000"); echo sheet
