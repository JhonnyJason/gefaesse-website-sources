indexdomconnect = {name: "indexdomconnect"}

############################################################
indexdomconnect.initialize = () ->
    global.upbutton = document.getElementById("upbutton")
    global.beitritt = document.getElementById("beitritt")
    global.ehrungen = document.getElementById("ehrungen")
    global.sektionen = document.getElementById("sektionen")
    global.vorstand = document.getElementById("vorstand")
    global.ziele = document.getElementById("ziele")
    global.headermenu = document.getElementById("headermenu")
    global.zieleLink = document.getElementById("ziele-link")
    global.vorstandLink = document.getElementById("vorstand-link")
    global.sektionenLink = document.getElementById("sektionen-link")
    global.ehrungenLink = document.getElementById("ehrungen-link")
    global.beitrittLink = document.getElementById("beitritt-link")
    return
    
module.exports = indexdomconnect