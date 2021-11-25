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
    global.zieleLink = document.getElementById("ziele-link")
    global.vorstandLink = document.getElementById("vorstand-link")
    global.sektionenLink = document.getElementById("sektionen-link")
    global.ehrungenLink = document.getElementById("ehrungen-link")
    global.beitrittLink = document.getElementById("beitritt-link")
    global.kontaktLink = document.getElementById("kontakt-link")
    global.menuOpenButton = document.getElementById("menu-open-button")
    global.menuCloseButton = document.getElementById("menu-close-button")
    return
    
module.exports = auskunftdomconnect