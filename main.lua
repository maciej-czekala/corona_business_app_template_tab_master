-- 
-- Abstract: PLUGIN_NAME Library Plugin Test Project
-- 
-- Sample code is MIT licensed, see http://www.coronalabs.com/links/code/license
-- Copyright (C) 2015 Corona Labs Inc. All Rights Reserved.
--
------------------------------------------------------------
display.setDefault( "background", 1, 1, 1 )

ui =  require ("plugin.ui_framework")
ui:init()

app = require ("plugin.app_framework")
app.init({enable = 
	{
		masterTab = true
	}

})
app.goTo("splash", {effect = "none"})

