--[[
-- Methamethods
--]]
-- Metamethods are special methods that are called when certain operations are performed on a table.
-- For example, you can define a metamethod for the addition operator (+) that specifies how two tables are added together.
-- Here's an example of how to define a metamethod for the addition operator:
-- Define a table
local t1 = { 1, 2, 3 }
local t2 = { 4, 5, 6 }

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
setmetatable(t1, mt)
setmetatable(t2, mt)

-- Now the tables t1 and t2 have a metatable that defines the behavior of the addition operator (+).
-- When you add two tables together, the __add metamethod is called with the two tables as arguments, and the result is returned.
-- Here's an example of how to add two tables together using the __add metamethod:
-- Add two tables together
local result = t1 + t2

-- Print the result
for _, value in ipairs(result) do
  print(value)
end

-- The output of the above code will be:
-- 5
-- 7
-- 9
-- In this example, the __add metamethod is called with the two tables t1 and t2 as arguments, and the result is a new table with the sum of the elements of the two tables.
-- In summary, metamethods are special methods that are called when certain operations are performed on a table, and you can define metamethods to change the behavior of tables when used with operators.
-- You can also use metamethods to define custom behavior for tables, such as adding two tables together, as shown in this example.
--
-- Common metamethods
-- Lua provides a number of common metamethods that you can define to change the behavior of tables. Here are some of the most commonly used metamethods:
-- __add: Defines the behavior of the addition operator (+).
-- __sub: Defines the behavior of the subtraction operator (-).
-- __mul: Defines the behavior of the multiplication operator (*).
-- __div: Defines the behavior of the division operator (/).
-- __mod: Defines the behavior of the modulo operator (%).
-- __unm: Defines the behavior of the unary minus operator (-).
-- __concat: Defines the behavior of the concatenation operator (..).
-- __eq: Defines the behavior of the equality operator (==).
-- __lt: Defines the behavior of the less than operator (<).
-- __le: Defines the behavior of the less than or equal to operator (<=).
-- __index: Defines the behavior of table access using the indexing operator ([]).
-- __newindex: Defines the behavior of table assignment using the indexing operator ([]).
-- __call: Defines the behavior of calling a table as a function.
-- __tostring: Defines the behavior of converting a table to a string.
-- You can define any of these metamethods for a table to change its behavior when used with the corresponding operator.
-- For example, you can define the __add metamethod to specify how two tables are added together, as shown in the previous example.
--
-- Practical examples
--
-- Here are some practical examples of how to use metamethods to change the behavior of tables:
-- Define a table
local t = { 1, 2, 3 }

-- Define a metatable
local mt = {
  __tostring = function(t)
    local result = "{"
    for i, v in ipairs(t) do
      result = result .. v
      if i < #t then
        result = result .. ", "
      end
    end
    result = result .. "}"
    return result
  end
}

-- Set the metatable for the table
setmetatable(t, mt)

-- Now the table t has a metatable that defines the behavior of converting the table to a string.
-- When you convert the table to a string, the __tostring metamethod is called with the table as an argument, and the result is returned.
-- Here's an example of how to convert the table to a string using the __tostring metamethod:
-- Convert the table to a string
local str = tostring(t)

-- Print the result
print(str) --> {1, 2, 3}

-- The output of the above code will be:
-- {1, 2, 3}
-- In this example, the __tostring metamethod is called with the table t as an argument, and the result is a string representation of the table.
--
-- Here's another example of how to use the __index metamethod to define custom behavior for table access:
-- Define a table
local t = { 1, 2, 3 }

-- Define a metatable
local mt = {
  __index = function(t, key)
    if key == "sum" then
      local result = 0
      for _, v in ipairs(t) do
        result = result + v
      end
      return result
    else
      return t[key]
    end
  end
}

-- Set the metatable for the table
setmetatable(t, mt)

-- Now the table t has a metatable that defines the behavior of table access using the indexing operator ([]).
-- When you access the table using the key "sum", the __index metamethod is called with the table and the key as arguments, and the result is returned.
-- Here's an example of how to access the table using the key "sum" using the __index metamethod:
-- Access the table using the key "sum"
local sum = t.sum

-- Print the result
print(sum) --> 6

-- Using metatables for OOP
-- Metatables are commonly used in Lua to implement object-oriented programming (OOP) features, such as classes and inheritance.
-- Here's an example of how to use metatables to define a class and create objects:
-- Define a class
local Point = {} -- The class is represented as a table
Point.__index = Point -- Set the __index metamethod to the class itself

-- Define a constructor for the class
-- The constructor is a function that creates a new object of the class
function Point.new(x, y)
  local self = setmetatable({}, Point) -- Create a new object and set its metatable to the class
  self.x = x -- Initialize the object's fields
  self.y = y
  return self -- Return the new object
end

-- Define a method for the class
-- The method is a function that operates on an object of the class
function Point:move(dx, dy)
  self.x = self.x + dx
  self.y = self.y + dy
end

-- Create objects of the class
local p1 = Point.new(0, 0)
local p2 = Point.new(1, 1)

-- Call a method on an object
p1:move(1, 1)

-- Print the fields of the objects
print(p1.x, p1.y) --> 1 1
print(p2.x, p2.y) --> 1 1

-- In this example, we define a class Point as a table and set its __index metamethod to the class itself. We also define a constructor for the class that creates new objects and sets their metatable to the class, and a method for the class that operates on objects of the class.
-- We then create objects of the class using the constructor, and call a method on one of the objects. The metatables are used to define the behavior of the class and its objects, allowing us to implement OOP features in Lua.
-- In summary, metatables are commonly used in Lua to implement OOP features, such as classes and inheritance. You can use metatables to define the behavior of tables when used with operators, and to define custom behavior for tables, such as converting a table to a string or accessing a table using the indexing operator.
