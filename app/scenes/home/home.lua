local scene = {}
local View = require("app.scenes.home.home_view")
local x = 0
function scene.new(viewGroup, controler, viewControler, params)
--==========================================--
	-------------
	-- Imports
	-------------
	-- declair model with set of items

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


--==========================================--
	--------------
	-- Scene init
	--------------
	function controler.onCreate()
		print("splash created")
		local splashView = View(controler)
		viewGroup:insertScene(splashView)

	end

	function controler.onShow()
		print("splash show")
	end

	--------------
	-- Clean Scene
	--------------
	function controler.onDestroy()

	end
end

return scene
