local _w = display.contentWidth
local _h = display.contentHeight

local function View(controler, model)
	-- define group for this view
	local sceneGroup = display.newGroup()

	local bg = display.newRect( sceneGroup, _w*.5, _h*.5, _w, _h )
	
	local logo = display.newImageRect(sceneGroup, "images/app framework logo no bg.png", 300, 176)
	logo.x = _w*.5
	logo.y = _h*.5

	return sceneGroup
end

return View
