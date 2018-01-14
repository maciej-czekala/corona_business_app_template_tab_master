local fragment = {}
local View = require("app.fragments.test_1.test_1_view")
local data_source = require("app.data.data_source")

local _w = display.contentWidth
local _h = display.contentHeight
function fragment.new(fragmentGroup, controler, viewControler, params)
--==========================================--
	-------------
	-- Imports
	-------------

	-------------
	-- Scene helpers
	-------------

	local model = app.Model({
		description = "string"
		})
	------------
	-- Scene variables and settings
	------------

	------------
	-- Scene functions declaration
	------------



--==========================================--
	

	------------
	--Functions
	------------ 
--==========================================--
	--------------
	-- Scene init
	--------------

	function controler.next()
		local _description = data_source:getRandomItem()
		model.set("description", _description)
	end

	function controler.onCreate()
    	local view = View(controler, model)
		fragmentGroup:insert(view)

		timer.performWithDelay( 400, 
			function()
				model.set("description", data_source:getRandomItem())
			end )
	end

	--------------
	-- Clean Scene
	--------------
	function controler.onDestroy()
		transition.cancel("show_card")
	end
end

return fragment
