local Packages = script.Parent.Parent
local Flipper = require(Packages.Flipper)

local useGoal = require(script.Parent.useGoal)

local function useInstant<T>(targetValue: T): T
	return useGoal(targetValue, Flipper.Instant.new(targetValue))
end

return useInstant