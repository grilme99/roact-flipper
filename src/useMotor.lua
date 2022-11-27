local Packages = script.Parent.Parent
local Flipper = require(Packages.Flipper)
local React = require(Packages.React)

local function createMotor(initialValue)
	local initialValueType = type(initialValue)
	if initialValueType == "number" then
		return Flipper.SingleMotor.new(initialValue)
	elseif initialValueType == "table" then
		return Flipper.GroupMotor.new(initialValue)
	else
		error(('Invalid type for initialValue. Expected "number" or "table", got "%s"'):format(initialValueType))
	end
end

local function useMotor(initialValue)
	local motor = React.useMemo(function()
		return createMotor(initialValue)
	end, {})

	React.useEffect(function()
		return function()
			motor:destroy()
		end
	end, {})

	return motor
end

return useMotor
