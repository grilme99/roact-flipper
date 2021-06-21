local Flipper = require(script.Parent.Parent.Flipper)

local function createMotor(initialValue)
	local initialValueType = type(initialValue)
	if initialValueType == "number" then
		return Flipper.SingleMotor.new(initialValue)
	elseif initialValueType == "table" then
		return Flipper.GroupMotor.new(initialValue)
	else
		error(("Invalid type for initialValue. Expected \"number\" or \"table\", got \"%s\""):format(initialValueType))
	end
end

local function useMotor(initialValue, goal, hooks)
	local motor = hooks.useValue(createMotor(initialValue))
	motor:setGoal(goal)
	return motor
end

return useMotor