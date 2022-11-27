local Packages = script.Parent.Parent

local React = require(Packages.React)
local Flipper = require(Packages.Flipper)

local function getBinding(motor): any
	assert(motor, "Missing argument #1: motor")

	local isMotor = Flipper.isMotor(motor)
	if not isMotor then
		error("Provided value is not a motor!", 2)
	end

	local binding, setBindingValue = React.useState(motor:getValue())
	motor:onStep(setBindingValue)

	return binding
end

return getBinding
