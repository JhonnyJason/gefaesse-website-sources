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

############################################################
v = null

############################################################
offOffset = 60

############################################################
isTouchscreen = false

############################################################
ogiaLinkExpanded = false
webinareLinkExpanded = false
termineLinkExpanded = false


############################################################
headermodule.initialize = ->
    log "headermodule.initialize"
    v = allModules.vanillautilmodule

    kontaktLink.addEventListener("click", scrollToKontakt)

    # Fix to get the touchstart event.
    document.body.addEventListener("touchstart", () -> return)
    anchorTagOgiaLink = ogiaLink.getElementsByTagName("a")[0]
    anchorTagOgiaLink.addEventListener("touchstart", touchedOgiaLink)
    anchorTagOgiaLink.addEventListener("click", clickedOgiaLink)

    anchorTagWebinareLink = webinareLink.getElementsByTagName("a")[0]
    anchorTagWebinareLink.addEventListener("touchstart", touchedWebinareLink)
    anchorTagWebinareLink.addEventListener("click", clickedWebinareLink)

    anchorTagTermineLink = termineLink.getElementsByTagName("a")[0]
    anchorTagTermineLink.addEventListener("touchstart", touchedTermineLink)
    anchorTagTermineLink.addEventListener("click", clickedTermineLink)


    menuOpenButton.addEventListener("click", openMenu)
    menuCloseButton.addEventListener("click", closeMenu)
    return
    
############################################################
#region  EventListeners
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
touchedWebinareLink = ->
    isTouchscreen = true
    return true

clickedWebinareLink = (evt) ->
    if isTouchscreen and !webinareLinkExpanded
        evt.preventDefault()
        webinareLinkExpanded = true
        webinareLink.classList.add("tapped")
        return true
    return true

############################################################
touchedTermineLink = ->
    isTouchscreen = true
    return true

clickedTermineLink = (evt) ->
    if isTouchscreen and !termineLinkExpanded
        evt.preventDefault()
        termineLinkExpanded = true
        termineLink.classList.add("tapped")
        return true
    return true

############################################################
scrollToKontakt = ->
    offset = contactBlock.offsetTop - offOffset
    v.scrollTo(offset)
    contactBlock.classList.add("lit")
    if endLitID then clearTimeout(endLitID)
    endLitID = setTimeout(endLit, 700)
    return

endLit = ->
    contactBlock.classList.remove("lit")
    return

#endregion


############################################################
#region exposedFunctions
headermodule.collapseExpanded = ->

    if ogiaLinkExpanded
        ogiaLinkExpanded = false
        ogiaLink.classList.remove("tapped")
        # blur to get rid off :hover state
        ogiaLink.blur()

    if termineLinkExpanded
        termineLinkExpanded = false
        termineLink.classList.remove("tapped")
        # blur to get rid off :hover state
        termineLink.blur()

    if webinareLinkExpanded
        webinareLinkExpanded = false
        webinareLink.classList.remove("tapped")
        # blur to get rid off :hover state
        webinareLink.blur()

    return

#endregion

module.exports = headermodule