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

tappedOegia = false
oegiaLinkExpanded = false

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
    beitrittLink.addEventListener("click", scrollToBeitritt)
    
    anchorTagOgiaLink = ogiaLink.getElementsByTagName("a")[0]
    anchorTagOgiaLink.addEventListener("touchstart", onTapOegia)
    anchorTagOgiaLink.addEventListener("click", onClickOegia)

    menuOpenButton.addEventListener("click", openMenu)
    menuCloseButton.addEventListener("click", closeMenu)
    weScrolled()
    return
    
############################################################
#region  EventListeners
weScrolled = ->
    offset = window.scrollY

    tappedOegia = false
    if oegiaLinkExpanded
        ogiaLink.classList.remove("tapped")
        oegiaLinkExpanded = false
    
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
onTapOegia = ->
    log "tapped"
    tappedOegia = true
    return

onClickOegia = (evt) ->
    log "clicked"
    log tappedOegia
    if tappedOegia and !oegiaLinkExpanded
        evt.preventDefault()
        oegiaLinkExpanded = true
        ogiaLink.classList.add("tapped")
        return false
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

#endregion


module.exports = headermodule