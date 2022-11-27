local Packages = script.Parent.Parent
local Flipper = require(Packages.Flipper)

local useGoal = require(script.Parent.useGoal)

export type SpringOptions = {
	frequency: number,
	dampingRatio: number,
}

local function useSpring<T>(initialValue: T, targetValue: T, options: SpringOptions): T
	return useGoal(initialValue, Flipper.Spring.new(targetValue, options))
end

return useSpring