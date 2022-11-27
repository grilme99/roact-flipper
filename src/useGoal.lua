local useMotor = require(script.Parent.useMotor)
local getBinding = require(script.Parent.getBinding)

local function useGoal<T>(initialValue: T, goal: any)
	local motor = useMotor(initialValue)
	motor:setGoal(goal)

	return getBinding(motor) :: T, motor
end

return useGoal