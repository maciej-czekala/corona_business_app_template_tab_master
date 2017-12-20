local class = {}

local list = {
	"short info",
	"medium info, medium info, medium info, medium info, medium info, medium info, medium info, medium info",
	"long info, long info, long info, long info, long info, long info, long info, long info, long info, long info, long info, long info, long info, long info, long info, long info, long info, long info, long info, long info, long info, long info, long info, long info"
}	

function class:getRandomItem()
	return list[math.random(#list)]
end

return class