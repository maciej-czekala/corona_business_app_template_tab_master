local _w = display.contentWidth
local _h = display.contentHeight

local function View(controler, model)
	-- define group for this view
	local sceneGroup = display.newGroup()

	-- local bg = display.newRect( sceneGroup, _w*.5, _h*.5, _w, _h )
	-- bg.dont_remove = true
	-- bg.alpha = .1

	model.setBinding("description",
		function(value)
			-- bg:setFillColor( math.random(255)/255, math.random(255)/255, math.random(255)/255 )
			for i = sceneGroup.numChildren, 1, -1 do
				if not sceneGroup[i].dont_remove then
					display.remove(sceneGroup[i])
				end
			end
			local card = ui.newCard({
		    	parent = sceneGroup,
		    	-- title = "1",
		    	description = value,
		    	buttons = {
		    		{ label = {text = "next"}, config = { touchCallback = controler.next } }
		    	}
		    })
		    card.x = _w*.5
		    card.y = - card.height - 10
		    transition.to( card, {time = 650, y = _h*.5 - 160, transition=easing.outBack, tag = "show_card" } )
		end)
   
	return sceneGroup
end

return View
