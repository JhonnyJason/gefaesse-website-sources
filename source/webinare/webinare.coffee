import Modules from "./allmodules"
import domconnect from "./webinaredomconnect"
domconnect.initialize()

global.allModules = Modules

############################################################
appStartup = ->
    allVideoButtons = document.getElementsByClassName("play-button")
    for button in allVideoButtons
        button.addEventListener("click", playClicked)
    ## which modules shall be kickstarted?
    # Modules.appcoremodule.startUp()
    return

playClicked = (evt) ->
    el = evt.currentTarget
    console.log(el)
    videoSrc = el.getAttribute("video-source")
    console.log(videoSrc)
    # videoSrc =  "/video/video1-webinar-dez-9-21.mp4"
    Modules.videodisplaymodule.displayVideo(videoSrc)
    return

############################################################
run = ->
    promises = (m.initialize() for n,m of Modules when m.initialize?) 
    await Promise.all(promises)
    appStartup()

############################################################
run()