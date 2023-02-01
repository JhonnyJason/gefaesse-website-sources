import Modules from "./allmodules.js"
import domconnect from "./auskunftdomconnect.js"
domconnect.initialize()

global.allModules = Modules

############################################################
import * as bundeslandselect from "./bundeslandselect.js"
import * as stationselect from "./stationselect.js"

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