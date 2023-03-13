local Packages = script.Parent.Parent
local Flipper = require(Packages.Flipper)

local useGoal = require(script.Parent.useGoal)

local function useLinear<T>(initialValue: T, targetValue: T, options)
	return useGoal(initialValue, Flipper.Linear.new(targetValue, options))
end

return useLinear