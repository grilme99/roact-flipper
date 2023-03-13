local useMotor = require(script.Parent.useMotor)
local getBinding = require(script.Parent.getBinding)

type ReactBinding<T> = {
	getValue: (self: ReactBinding<T>) -> T,
	map: <U>(self: ReactBinding<T>, (T) -> U) -> any,
	_source: string?,
}

local function useGoal<T>(initialValue: T, goal: any)
	local motor = useMotor(initialValue)
	motor:setGoal(goal)

	return getBinding(motor) :: ReactBinding<T>, motor
end

return useGoal