--[[
--Understanding metatables
--]]
--
-- Metatables are a powerful feature in Lua that allow you to change the behavior of tables.
--
-- What is a metatable?
-- A metatable is a table that defines the behavior of another table. You can use a metatable to define how a table behaves when used with operators, such as addition, subtraction, and comparison.
-- What is a metamethod?
-- A metamethod is a function that defines the behavior of a table when used with a specific operator. For example, you can define a metamethod for the addition operator (+) that specifies how two tables are added together.

-- How do you set a metatable for a table?
-- You can set a metatable for a table using the setmetatable function. For example:
-- Define a table
local t = { 1, 2, 3 }

-- Define a metatable
local mt = {
  __add = function(a, b)
    local result = {}
    for i = 1, #a do
      result[i] = a[i] + b[i]
    end
    return result
  end
}

-- Set the metatable for the table
setmetatable(t, mt)

-- Now the table t has a metatable that defines the behavior of the addition operator (+).
-- How do you get the metatable of a table?
-- You can get the metatable of a table using the getmetatable function. For example:
-- Define a table
local t = { 1, 2, 3 }

-- Define a metatable
local mt = {
  __add = function(a, b)
    local result = {}
    for i = 1, #a do
      result[i] = a[i] + b[i]
    end
    return result
  end
}

-- Set the metatable for the table
setmetatable(t, mt)

-- Get the metatable of the table
local t_mt = getmetatable(t)

-- Now the variable t_mt contains the metatable of the table t.
--
-- Summary
-- Metatables are a powerful feature in Lua that allow you to change the behavior of tables. A metatable is a table that defines the behavior of another table, and you can use a metatable to define how a table behaves when used with operators, such as addition, subtraction, and comparison. A metamethod is a function that defines the behavior of a table when used with a specific operator, and you can set a metatable for a table using the setmetatable function. You can get the metatable of a table using the getmetatable function.
