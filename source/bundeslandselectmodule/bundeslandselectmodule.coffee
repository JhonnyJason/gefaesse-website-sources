bundeslandselectmodule = {name: "bundeslandselectmodule"}
############################################################
#region printLogFunctions
log = (arg) ->
    if allModules.debugmodule.modulesToDebug["bundeslandselectmodule"]?  then console.log "[bundeslandselectmodule]: " + arg
    return
ostr = (obj) -> JSON.stringify(obj, null, 4)
olog = (obj) -> log "\n" + ostr(obj)
print = (arg) -> console.log(arg)
#endregion

############################################################
bundeslandselectmodule.initialize = () ->
    log "bundeslandselectmodule.initialize"
    return
    
module.exports = bundeslandselectmodule