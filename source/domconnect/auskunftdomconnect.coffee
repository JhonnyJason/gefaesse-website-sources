auskunftdomconnect = {name: "auskunftdomconnect"}

############################################################
auskunftdomconnect.initialize = () ->
    global.upbutton = document.getElementById("upbutton")
    global.contactBlock = document.getElementById("contact-block")
    global.patientenInformation = document.getElementById("patienten-information")
    global.informationDetailCardTemplate = document.getElementById("information-detail-card-template")
    global.stationElementTemplate = document.getElementById("station-element-template")
    global.informationDetailCard = document.getElementById("information-detail-card")
    global.informationStationsList = document.getElementById("information-stations-list")
    global.headermenu = document.getElementById("headermenu")
    global.ogiaLink = document.getElementById("ogia-link")
    global.termineLink = document.getElementById("termine-link")
    global.webinareLink = document.getElementById("webinare-link")
    global.kontaktLink = document.getElementById("kontakt-link")
    global.menuOpenButton = document.getElementById("menu-open-button")
    global.menuCloseButton = document.getElementById("menu-close-button")
    return
    
module.exports = auskunftdomconnect