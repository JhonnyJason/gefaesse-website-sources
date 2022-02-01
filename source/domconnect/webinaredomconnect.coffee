webinaredomconnect = {name: "webinaredomconnect"}

############################################################
webinaredomconnect.initialize = () ->
    global.upbutton = document.getElementById("upbutton")
    global.contactBlock = document.getElementById("contact-block")
    global.headermenu = document.getElementById("headermenu")
    global.ogiaLink = document.getElementById("ogia-link")
    global.termineLink = document.getElementById("termine-link")
    global.webinareLink = document.getElementById("webinare-link")
    global.kontaktLink = document.getElementById("kontakt-link")
    global.menuOpenButton = document.getElementById("menu-open-button")
    global.menuCloseButton = document.getElementById("menu-close-button")
    global.videodisplay = document.getElementById("videodisplay")
    global.clickCatcher = document.getElementById("click-catcher")
    global.videoElement = document.getElementById("video-element")
    return
    
module.exports = webinaredomconnect