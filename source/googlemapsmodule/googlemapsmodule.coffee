googlemapsmodule = {name: "googlemapsmodule"}
############################################################
#region printLogFunctions
log = (arg) ->
    if allModules.debugmodule.modulesToDebug["googlemapsmodule"]?  then console.log "[googlemapsmodule]: " + arg
    return
ostr = (obj) -> JSON.stringify(obj, null, 4)
olog = (obj) -> log "\n" + ostr(obj)
print = (arg) -> console.log(arg)
#endregion

############################################################
googlemapsmodule.initialize = () ->
    log "googlemapsmodule.initialize"
    return
    
module.exports = googlemapsmodule