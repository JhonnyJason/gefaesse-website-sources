videodisplaymodule = {name: "videodisplaymodule"}
############################################################
#region printLogFunctions
log = (arg) ->
    if allModules.debugmodule.modulesToDebug["videodisplaymodule"]?  then console.log "[videodisplaymodule]: " + arg
    return
ostr = (obj) -> JSON.stringify(obj, null, 4)
olog = (obj) -> log "\n" + ostr(obj)
print = (arg) -> console.log(arg)
#endregion

############################################################
videodisplaymodule.initialize = ->
    log "videodisplaymodule.initialize"
    if !videodisplay? then return
    
    clickCatcher.addEventListener("click", videodisplaymodule.clear)
    
    return
    
videodisplaymodule.displayVideo = (src) ->
    videoElement.setAttribute("src", src)
    videodisplay.classList.add("shown")
    return

videodisplaymodule.clear = ->
    videoElement.setAttribute("src", "")
    videodisplay.classList.remove("shown")
    return

module.exports = videodisplaymodule