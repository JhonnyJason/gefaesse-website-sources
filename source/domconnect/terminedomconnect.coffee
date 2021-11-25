terminedomconnect = {name: "terminedomconnect"}

############################################################
terminedomconnect.initialize = () ->
    global.upbutton = document.getElementById("upbutton")
    global.contactBlock = document.getElementById("contact-block")
    global.headermenu = document.getElementById("headermenu")
    global.ogiaLink = document.getElementById("ogia-link")
    global.zieleLink = document.getElementById("ziele-link")
    global.vorstandLink = document.getElementById("vorstand-link")
    global.sektionenLink = document.getElementById("sektionen-link")
    global.ehrungenLink = document.getElementById("ehrungen-link")
    global.beitrittLink = document.getElementById("beitritt-link")
    global.kontaktLink = document.getElementById("kontakt-link")
    global.menuOpenButton = document.getElementById("menu-open-button")
    global.menuCloseButton = document.getElementById("menu-close-button")
    return
    
module.exports = terminedomconnect