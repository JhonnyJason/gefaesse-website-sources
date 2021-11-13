import Modules from "./allmodules"
import domconnect from "./auskunftdomconnect"
domconnect.initialize()

global.allModules = Modules

############################################################
import bundeslandselect from "./bundeslandselect"
import stationselect from "./stationselect"

############################################################
appStartup = ->
    bundeslandselect.initialize()
    stationselect.initialize()
    return

############################################################
run = ->
    promises = (m.initialize() for n,m of Modules when m.initialize?) 
    await Promise.all(promises)
    appStartup()

############################################################
run()