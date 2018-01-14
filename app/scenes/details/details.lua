local scene = {}
local View = require("app.scenes.details.details_view")
function scene.new(viewGroup, controler, viewControler, params)
--==========================================--
	-------------
	-- Imports
	-------------
	-- declair model with set of items
	local model = app.Model(
		{
			title = "string"
		})

	-- set value for model item
	model.set("title", "Details")

	-------------
	-- Scene helpers
	-------------

	------------
	-- Scene variables and settings
	------------

--==========================================--

	------------
	--Functions
	------------ 
	function controler.backCallback()
		app.goBack()
	end


--==========================================--
	--------------
	-- Scene init
	--------------
	function controler.onCreate()
		-- print("splash created")
		local view = View(controler, model)
		viewGroup:insertScene(view)

	end

	function controler.onShow()
		print("splash show")
	end

	function controler.onAndroidBackButtonPressed()
		controler.backCallback()
	end

	--------------
	-- Clean Scene
	--------------
	function controler.onDestroy()

	end


end

return scene
