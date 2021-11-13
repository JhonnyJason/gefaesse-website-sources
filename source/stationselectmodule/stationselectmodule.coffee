stationselectmodule = {name: "stationselectmodule"}
############################################################
#region printLogFunctions
log = (arg) ->
    if allModules.debugmodule.modulesToDebug["stationselectmodule"]?  then console.log "[stationselectmodule]: " + arg
    return
ostr = (obj) -> JSON.stringify(obj, null, 4)
olog = (obj) -> log "\n" + ostr(obj)
print = (arg) -> console.log(arg)
#endregion

############################################################
stationselectmodule.initialize = () ->
    log "stationselectmodule.initialize"
    return
    
module.exports = stationselectmodule