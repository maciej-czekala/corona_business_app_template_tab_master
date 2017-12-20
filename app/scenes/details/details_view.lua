local _w = display.contentWidth
local _h = display.contentHeight

local function View(controler, model)
	-- define group for this view
	local sceneGroup = display.newGroup()

	local bg = display.newRect( sceneGroup, _w*.5, _h*.5, _w, _h )
	
	local navBar = ui.newNavbar({
		title = "Details", 
		buttons = {
     		back = {text = "home", touchCallback = controler.backCallback
     		
     		--icon = {touchCallback = controler.backCallback
     		}
    	}
    })
    navBar.x = display.contentWidth*.5
	navBar.y = navBar.height*.5
	sceneGroup:insert(navBar)

	-- display object in our view
	local title = display.newText( { text = model:get("title")} )
	title:setFillColor( 1,0,0 )
	title.x = 100
	title.y = 100
	sceneGroup:insert(title)

	-- touch listener
	title:addEventListener( "tap", 
		function()
			-- call controler to return functional logic  to controler
			controler.onTouch()
		end )

	-- set up binding so then title will be chande  you will get new value here. 
	-- update your display objecct with new value.
	model:setBinding("title",
		function(value)
			title.text = value
		end)

	-- return shole group
	return sceneGroup
end

return View
