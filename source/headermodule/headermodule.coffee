headermodule = {name: "headermodule"}
############################################################
#region printLogFunctions
log = (arg) ->
    if allModules.debugmodule.modulesToDebug["headermodule"]?  then console.log "[headermodule]: " + arg
    return
ostr = (obj) -> JSON.stringify(obj, null, 4)
olog = (obj) -> log "\n" + ostr(obj)
print = (arg) -> console.log(arg)
#endregion

upButton = null
v = null

isTouchscreen = false
ogiaLinkExpanded = false

############################################################
headermodule.initialize = ->
    log "headermodule.initialize"
    upButton = allModules.upbuttonmodule
    v = allModules.vanillautilmodule

    document.addEventListener("scroll", weScrolled)
    zieleLink.addEventListener("click", scrollToZiele)
    vorstandLink.addEventListener("click", scrollToVorstand)
    sektionenLink.addEventListener("click", scrollToSektionen)
    ehrungenLink.addEventListener("click", scrollToEhrungen)
    # beitrittLink.addEventListener("click", scrollToBeitritt)
    kontaktLink.addEventListener("click", scrollToKontakt)

    # Fix to get the touchstart event.
    document.body.addEventListener("touchstart", () -> return)
    anchorTagOgiaLink = ogiaLink.getElementsByTagName("a")[0]
    anchorTagOgiaLink.addEventListener("touchstart", touchedOgiaLink)
    anchorTagOgiaLink.addEventListener("click", clickedOgiaLink)

    menuOpenButton.addEventListener("click", openMenu)
    menuCloseButton.addEventListener("click", closeMenu)
    weScrolled()
    return
    
############################################################
#region  EventListeners
weScrolled = ->
    offset = window.scrollY

    if ogiaLinkExpanded
        ogiaLinkExpanded = false
        ogiaLink.classList.remove("tapped")
        # blur to get rid off :hover state
        ogiaLink.blur()

    if offset > 110
        headermenu.classList.add("small-nav")
        headermenu.classList.remove("big-nav")
        headermenu.classList.remove("menu-open")
        headermenu.classList.add("menu-closed")
    else 
        headermenu.classList.remove("small-nav")
        headermenu.classList.remove("big-nav")
        headermenu.classList.add("menu-open")
        headermenu.classList.remove("menu-closed")
    
    if offset > 500 then upButton.show()
    else upButton.hide()
    
    return

############################################################
openMenu = ->
    headermenu.classList.add("menu-open")
    headermenu.classList.remove("menu-closed")
    headermenu.classList.add("big-nav")
    headermenu.classList.remove("small-nav")
    return

closeMenu = ->
    headermenu.classList.add("menu-closed")
    headermenu.classList.remove("menu-open")
    headermenu.classList.add("small-nav")
    headermenu.classList.remove("big-nav")
    return

############################################################
touchedOgiaLink = ->
    isTouchscreen = true
    return true

clickedOgiaLink = (evt) ->
    if isTouchscreen and !ogiaLinkExpanded
        evt.preventDefault()
        ogiaLinkExpanded = true
        ogiaLink.classList.add("tapped")
        return true
    return true

############################################################
scrollToZiele = ->
    offset = ziele.offsetTop - 50
    v.scrollTo(offset)
    return

scrollToVorstand = ->
    offset = vorstand.offsetTop - 50
    v.scrollTo(offset)
    return

scrollToSektionen = ->
    offset = sektionen.offsetTop - 50
    v.scrollTo(offset)
    return

scrollToEhrungen = ->
    offset = ehrungen.offsetTop - 50
    v.scrollTo(offset)
    return

scrollToBeitritt = ->
    offset = beitritt.offsetTop - 50
    v.scrollTo(offset)
    return

scrollToKontakt = ->
    offset = contactBlock.offsetTop - 50
    v.scrollTo(offset)
    contactBlock.classList.add("lit")
    if endLitID then clearTimeout(endLitID)
    endLitID = setTimeout(endLit, 700)
    return

endLit = ->
    contactBlock.classList.remove("lit")
    return

#endregion


module.exports = headermodule