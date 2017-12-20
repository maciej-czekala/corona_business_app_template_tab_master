local _w = display.contentWidth
local _h = display.contentHeight

local function View(controler)
	-- define group for this view
	local sceneGroup = display.newGroup()

	local bg = display.newRect( sceneGroup, _w*.5, _h*.5, _w, _h )

	local bg_image = display.newImageRect(sceneGroup, "images/bg_image.png", 300, 224)
	bg_image.x = _w*.5
	bg_image.y = _h*.5
	bg_image.alpha = .1

	local navBar = ui.newNavbar({
		title = "{App name}"
    })
    navBar.x = display.contentWidth*.5
	navBar.y = navBar.height*.5
	sceneGroup:insert(navBar)

	local masterFragment = app.newMasterTab({ 
		config = {
			height = _h - navBar.height
		},
		items = {
			{tabName = "home", fragmentName = "test_1", icon = ui.fonts.icon.home}, 
			{tabName = "extra", fragmentName = "test_2", icon = ui.fonts.icon.list}
		}
	})
	masterFragment.y = navBar.height
	sceneGroup:insert(masterFragment)

	navBar:toFront()
	return sceneGroup
end

return View
