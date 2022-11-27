local Packages = script.Parent.Parent
local Flipper = require(Packages.Flipper)

local useGoal = require(script.Parent.useGoal)

local function useLinear<T>(initialValue: T, targetValue: T, options): T
	return useGoal(Flipper.Linear.new(targetValue, options))
end

return useLinear