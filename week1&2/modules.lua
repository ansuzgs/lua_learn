-- Assuming we have a module printFormatter
-- Also printFormatter has a function simpleFormat(arg)

-- Method 1
--[[
-- require "printFormatter"
-- printFormatter.simpleFormat("test")
--]]

-- Method 2
--[[
-- local formatter = require "printFormatter"
-- formatter.simpleFormat("test")
--]]
-- Method 3
--[[
-- require "printFormatter"
-- local formatterFunction = printFormatter.simpleFormat
-- formatterFunction("test")
--]]

local mymathmodule = require("mymath")
mymathmodule.add(10, 20)
mymathmodule.sub(30, 20)
mymathmodule.mul(10, 20)
mymathmodule.div(30, 20)
