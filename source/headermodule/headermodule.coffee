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

    menuOpenButton.addEventListener("click", openMenu)
    menuCloseButton.addEventListener("click", closeMenu)
    weScrolled()
    return
    
############################################################
#region  EventListeners
weScrolled = ->
    offset = window.scrollY
    
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
scrollToZiele = ->
    offset = ziele.offsetTop
    v.scrollTo(offset)
    return

scrollToVorstand = ->
    offset = vorstand.offsetTop
    v.scrollTo(offset)
    return

scrollToSektionen = ->
    offset = sektionen.offsetTop
    v.scrollTo(offset)
    return

scrollToEhrungen = ->
    offset = ehrungen.offsetTop
    v.scrollTo(offset)
    return

scrollToBeitritt = ->
    offset = beitritt.offsetTop
    v.scrollTo(offset)
    return

#endregion


module.exports = headermodule