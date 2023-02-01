############################################################
#region debug
import { createLogFunctions } from "thingy-debug"
{log, olog} = createLogFunctions("videodisplaymodule")
#endregion

############################################################
export initialize = ->
    log "initialize"
    if !videodisplay? then return
    
    clickCatcher.addEventListener("click", clear)
    
    return
    
############################################################
export displayVideo = (src) ->
    videoElement.setAttribute("src", src)
    videodisplay.classList.add("shown")
    return

############################################################
export clear = ->
    videoElement.setAttribute("src", "")
    videodisplay.classList.remove("shown")
    return
