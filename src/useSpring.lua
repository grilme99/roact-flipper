local Packages = script.Parent.Parent
local Flipper = require(Packages.Flipper)

local useGoal = require(script.Parent.useGoal)

local function useSpring(targetValue, options)
	return useGoal(Flipper.Spring.new(targetValue, options))
end

return useSpring