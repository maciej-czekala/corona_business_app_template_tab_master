local fragment = {}
local View = require("app.fragments.test_2.test_2_view")
local _w = display.contentWidth
local _h = display.contentHeight
function fragment.new(fragmentGroup, controler, viewControler, params)
--==========================================--
	-------------
	-- Imports
	-------------
	local model = app:Model({
		description = "string"
		})

	model:set("description","some additional information")
	-------------
	-- Scene helpers
	-------------

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

	function controler.onCreate()
    	local view = View(controler, model)
		fragmentGroup:insert(view)
	end

	function controler.onShow()
		print("ui show")
	end

	--------------
	-- Clean Scene
	--------------
	function controler.onDestroy()

	end
end

return fragment
