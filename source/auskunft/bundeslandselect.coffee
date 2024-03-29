############################################################
#region debug
import { createLogFunctions } from "thingy-debug"
{log, olog} = createLogFunctions("bundeslandselect")
#endregion

############################################################
import *  as state from "./statemodule.js"

############################################################
defaultBundesland = "vorarlberg"

############################################################
currentSelection = null

############################################################
export initialize = ->
    log "initialize"
    stateSelection = state.get("currentBundesland")
    
    if stateSelection? then select(stateSelection)
    else 
        state.save("currentBundesland", defaultBundesland)
        select(defaultBundesland)

    vorarlberg = document.getElementById("vorarlberg")
    vorarlberg.addEventListener("click", vorarlbergClicked)
    vorarlbergLink = document.getElementById("vorarlberg-link")
    vorarlbergLink.addEventListener("click", vorarlbergClicked)

    tirol = document.getElementById("tirol")
    tirolLink = document.getElementById("tirol-link")
    tirol.addEventListener("click", tirolClicked)
    tirolLink.addEventListener("click", tirolClicked)

    salzburg = document.getElementById("salzburg")
    salzburgLink = document.getElementById("salzburg-link")
    salzburg.addEventListener("click", salzburgClicked)
    salzburgLink.addEventListener("click", salzburgClicked)

    kaernten = document.getElementById("kaernten")
    kaerntenLink = document.getElementById("kaernten-link")
    kaernten.addEventListener("click", kaerntenClicked)
    kaerntenLink.addEventListener("click", kaerntenClicked)

    oberoesterreich = document.getElementById("oberoesterreich")
    oberoesterreichLink = document.getElementById("oberoesterreich-link")
    oberoesterreich.addEventListener("click", oberoesterreichClicked)
    oberoesterreichLink.addEventListener("click", oberoesterreichClicked)

    steiermark = document.getElementById("steiermark")
    steiermarkLink = document.getElementById("steiermark-link")
    steiermark.addEventListener("click", steiermarkClicked)
    steiermarkLink.addEventListener("click", steiermarkClicked)

    niederoesterreich = document.getElementById("niederoesterreich")
    niederoesterreichLink = document.getElementById("niederoesterreich-link")
    niederoesterreich.addEventListener("click", niederoesterreichClicked)
    niederoesterreichLink.addEventListener("click", niederoesterreichClicked)

    wien = document.getElementById("wien")
    wienLink = document.getElementById("wien-link")
    wien.addEventListener("click", wienClicked)
    wienLink.addEventListener("click", wienClicked)

    burgenland = document.getElementById("burgenland")
    burgenlandLink = document.getElementById("burgenland-link")
    burgenland.addEventListener("click", burgenlandClicked)
    burgenlandLink.addEventListener("click", burgenlandClicked)


    return

############################################################
#region eventListeners
vorarlbergClicked = -> select("vorarlberg")
tirolClicked = -> select("tirol")
salzburgClicked = -> select("salzburg")
kaerntenClicked = -> select("kaernten")
oberoesterreichClicked = -> select("oberoesterreich")
steiermarkClicked = -> select("steiermark")
niederoesterreichClicked = -> select("niederoesterreich")
wienClicked = -> select("wien")
burgenlandClicked = -> select("burgenland")

#endregion

############################################################
select = (bundesland) ->
    if bundesland == currentSelection then return
    
    if currentSelection?
        oldBundeslandOnMap = document.getElementById(currentSelection)
        oldBundeslandOnMap.classList.remove("selected")
        oldBundeslandLink = document.getElementById(currentSelection+"-link")
        oldBundeslandLink.classList.remove("selected")

    bundeslandOnMap = document.getElementById(bundesland)    
    bundeslandOnMap.classList.add("selected")
    bundeslandLink = document.getElementById(bundesland+"-link")
    bundeslandLink.classList.add("selected")
    currentSelection = bundesland
    state.save("currentBundesland", currentSelection)
    return

