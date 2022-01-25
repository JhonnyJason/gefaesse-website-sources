indexdomconnect = {name: "indexdomconnect"}

############################################################
indexdomconnect.initialize = () ->
    global.upbutton = document.getElementById("upbutton")
    global.contactBlock = document.getElementById("contact-block")
    global.beitritt = document.getElementById("beitritt")
    global.ehrungen = document.getElementById("ehrungen")
    global.sektionen = document.getElementById("sektionen")
    global.vorstand = document.getElementById("vorstand")
    global.ziele = document.getElementById("ziele")
    global.headermenu = document.getElementById("headermenu")
    global.ogiaLink = document.getElementById("ogia-link")
    global.zieleLink = document.getElementById("ziele-link")
    global.vorstandLink = document.getElementById("vorstand-link")
    global.sektionenLink = document.getElementById("sektionen-link")
    global.ehrungenLink = document.getElementById("ehrungen-link")
    global.beitrittLink = document.getElementById("beitritt-link")
    global.webinareLink = document.getElementById("webinare-link")
    global.kontaktLink = document.getElementById("kontakt-link")
    global.menuOpenButton = document.getElementById("menu-open-button")
    global.menuCloseButton = document.getElementById("menu-close-button")
    return
    
module.exports = indexdomconnect