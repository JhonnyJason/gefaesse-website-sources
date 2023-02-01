############################################################
#region debug
import { createLogFunctions } from "thingy-debug"
{log, olog} = createLogFunctions("upbuttonmodule")
#endregion

############################################################
v = null

############################################################
export initialize = ->
    log "initialize"
    v = allModules.vanillautilmodule
    upbutton.addEventListener("click", scrollToTop)
    return
    
############################################################
export show = ->
    upbutton.classList.add("here")
    return

export hide = ->
    upbutton.classList.remove("here")
    return

############################################################
scrollToTop = ->
    v.scrollTo(0)
    return
    