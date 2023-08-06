import strformat
import macros
import sequtils

import nimqt {.all.} # The all pragma allow us to access see the non-public ParamInfo type

template blockSignalsTmp*(o:ptr typed, body:untyped) =
    let old=o.blockSignals(true)
    body
    discard o.blockSignals(old)

template SIGNAL*(signal:string): string = "2" & signal
template SLOT*(slot:string): string = "1" & slot
template emit*(x:untyped) = x

# The following function allow easy handling of a single (e.g. inside a makeLayout).
# 
# NOTE we force the cdecl pragma, to ensure that we do not capture any local variables, as that
# would result in weird c++ errors.
var handleSignalId{.compileTime.}=0
proc handleSignalHelper(o:NimNode, signal:NimNode, params0:seq[NimNode], body:NimNode):NimNode =
    let
        functionName = &"on_functor_clicked_{handleSignalId}"
        functionNameIdent=ident(functionName)
        params:seq[ParamInfo]=params0.mapIt(it.nodeToParamInfo)
    handleSignalId.inc
    result = quote do:
        proc `functionNameIdent`() {.exportcpp,cdecl.} = (let this{.inject,used.}=`o`; `body`)
        connect(`o`, `signal`, `functionNameIdent`)
    for param in params:
        result[0][3].add param.nim_param

macro handleSignal0*(o:typed, signal:string, body:untyped) = handleSignalHelper(o, signal, @[], body)
macro handleSignal1*(o:typed, signal:string, param1:untyped, body:untyped) = handleSignalHelper(o, signal, @[param1], body)
macro handleSignal2*(o:typed, signal:string, param1,param2:untyped, body:untyped) = handleSignalHelper(o, signal, @[param1,param2], body)
macro handleSignal3*(o:typed, signal:string, param1,param2,param3:untyped, body:untyped) = handleSignalHelper(o, signal, @[param1,param2,param3], body)
macro handleSignal4*(o:typed, signal:string, param1,param2,param3,param4:untyped, body:untyped) = handleSignalHelper(o, signal, @[param1,param2,param3,param4], body)
