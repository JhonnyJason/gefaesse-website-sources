upbuttonmodule = {name: "upbuttonmodule"}
############################################################
#region printLogFunctions
log = (arg) ->
    if allModules.debugmodule.modulesToDebug["upbuttonmodule"]?  then console.log "[upbuttonmodule]: " + arg
    return
ostr = (obj) -> JSON.stringify(obj, null, 4)
olog = (obj) -> log "\n" + ostr(obj)
print = (arg) -> console.log(arg)
#endregion

############################################################
v = null

############################################################
upbuttonmodule.initialize = () ->
    log "upbuttonmodule.initialize"
    v = allModules.vanillautilmodule
    upbutton.addEventListener("click", scrollToTop)
    return
    
############################################################
upbuttonmodule.show = ->
    upbutton.classList.add("here")
    return

upbuttonmodule.hide = ->
    upbutton.classList.remove("here")
    return

############################################################
scrollToTop = ->
    v.scrollTo(0)
    return
    
module.exports = upbuttonmodule