smoothscrolleffectmodule = {name: "smoothscrolleffectmodule"}
############################################################
#region printLogFunctions
log = (arg) ->
    if allModules.debugmodule.modulesToDebug["smoothscrolleffectmodule"]?  then console.log "[smoothscrolleffectmodule]: " + arg
    return
ostr = (obj) -> JSON.stringify(obj, null, 4)
olog = (obj) -> log "\n" + ostr(obj)
print = (arg) -> console.log(arg)
#endregion

############################################################
v = null
headerHeight = 60

upButton = null

############################################################
smoothscrolleffectmodule.initialize = ->
    log "smoothscrolleffectmodule.initialize"
    v = allModules.vanillautilmodule
    slideinMenu = allModules.slideinmenumodule
    upButton = allModules.upbuttonmodule

    allLinks = document.getElementsByTagName("a")
    for link,i in allLinks
        ref = link.getAttribute("href")
        if ref then anchorname = getAnchorName(ref)
        else anchorname = null
        if anchorname then addScrollEffect(link, anchorname)

    document.addEventListener("scroll", weScrolled)
    weScrolled()
    return
    
############################################################
getAnchorName = (ref) ->
    # log ref
    idx = ref.indexOf("#")
    if idx < 0 then return null
    return ref.slice(idx+1)

addScrollEffect = (link, anchorname) ->
    # olog {link,anchorname}
    return if anchorname == "kontakt"
    el = document.getElementById(anchorname)
    return unless el?
    scrollFunction = -> v.scrollTo(el.offsetTop-headerHeight)
    link.addEventListener("click", scrollFunction)
    return


############################################################
#region eventListeners
weScrolled = (evt) ->
    offset = window.scrollY

    allModules.headermodule.collapseExpanded()

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

#endregion

module.exports = smoothscrolleffectmodule