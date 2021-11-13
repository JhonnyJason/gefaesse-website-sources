stationselectmodule = {name: "stationselectmodule"}
############################################################
#region printLogFunctions
log = (arg) ->
    if allModules.debugmodule.modulesToDebug["stationselectmodule"]?  then console.log "[stationselectmodule]: " + arg
    return
ostr = (obj) -> JSON.stringify(obj, null, 4)
olog = (obj) -> log "\n" + ostr(obj)
print = (arg) -> console.log(arg)
#endregion

############################################################
auskunftData = require("./auskunftdata")
m = require("mustache")

############################################################
state = null
v = null

############################################################
detailCardTemplate = null
elementTemplate = null

############################################################
cardSelection = null
bundesland = null
stations = null
data = null

############################################################
noStationHTML = """
    <p>
        Leider keine Auskunft für dieses Bundesland verfügbar.
    </p>
"""

noSelectionHTML = """
    <p>
        Für weitere Details, bitte wählen Sie eine Angiologiestation.
    </p>
"""


############################################################
stationselectmodule.initialize = ->
    log "stationselectmodule.initialize"
    state = allModules.statemodule
    v = allModules.vanillautilmodule

    detailCardTemplate = informationDetailCardTemplate.innerHTML
    elementTemplate = stationElementTemplate.innerHTML

    state.addOnChangeListener("currentBundesland", bundeslandChanged)
    bundeslandChanged()

    state.addOnChangeListener("currentSelection", applySelection)
    applySelection()
    return
    
############################################################
bundeslandChanged = ->
    log "bundeslandChanged"
    bundesland = state.get("currentBundesland")
    data = auskunftData[bundesland]
    buildStationList()
    attachEventListeners()
    visualizeSelection()
    return

buildStationList = ->
    log "buildStationList"
    stationListHTML = ""
    for d in data
        doctorName = d.doctorName
        if !doctorName then doctorName = d.stationName
        address = d.address
        stationListHTML += m.render(elementTemplate, {doctorName, address})

    if !stationListHTML then stationListHTML = noStationHTML

    informationStationsList.innerHTML = stationListHTML
    return

getSelectFunction = (index) ->
    return () -> state.save("currentSelection", bundesland+"."+index)

attachEventListeners = ->
    log "attachEventListeners"
    stations = informationStationsList.getElementsByClassName("station")
    for station,i in stations
        fun = getSelectFunction(i)
        station.addEventListener("click", fun)
    return

visualizeSelection = ->
    log "visualizeSelection"
    selection = state.get("currentSelection")
    if !selection then return

    tokens = selection.split(".")
    selectedBundesland = tokens[0]
    selectedIndex = tokens[1]
    if selectedBundesland != bundesland then return

    stations[selectedIndex].classList.add("selected")
    return

applySelection = ->
    s.classList.remove("selected") for s in stations #clear old selection 
    selection = state.get("currentSelection")
    if !selection
        setDetailCard(noSelectionHTML)
        return

    tokens = selection.split(".")
    selectedBundesland = tokens[0]
    selectedIndex = tokens[1]
    d = auskunftData[selectedBundesland][selectedIndex]

    if d.cardContent then detailCard = d.cardContent
    else detailCard = m.render(detailCardTemplate, d)
    setDetailCard(detailCard, true)
    visualizeSelection()
    return

setDetailCard = (cardHTML, scroll = false) ->
    log "setDetailCard"
    informationDetailCard.innerHTML = cardHTML
    # patientenInformation.
    if scroll then v.scrollTo(patientenInformation)
    return

module.exports = stationselectmodule