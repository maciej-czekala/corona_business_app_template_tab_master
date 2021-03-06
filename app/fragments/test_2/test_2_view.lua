local _w = display.contentWidth
local _h = display.contentHeight

local function View(controler, model)
	-- define group for this view
	local sceneGroup = ui.newStackPanel()--display.newGroup()
	sceneGroup.x = _w*.5
	
	local title = display.newText({text = model.get("description")} )
	title.dock = {left = true}
	title.padding = {left = 8, top = 8}
    title:setFillColor( 0 )
    sceneGroup:insert(title)

    local btn = ui.newButton({touchCallback = controler.goToDetails, config = { style = "raised", touchCallback = controler.goToDetails }, label = {text = "details"}})
    sceneGroup:insert(btn)


	return sceneGroup
end

return View
