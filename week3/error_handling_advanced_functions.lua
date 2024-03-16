--[[
--Error handling in advanced functions
--]]
-- Error handling in advanced functions
-- Error handling in advanced functions allows you to handle errors and continue processing data. This is useful when working with higher order functions and anonymous functions, which can produce errors when processing data. In this example, we'll use the pcall function to handle errors in a higher order function that applies a function to each element of a table.
-- Define a higher order function that applies a function to each element of a tables
local map = function(func, t)
  local result = {}
  for i, v in ipairs(t) do
    local success, value = pcall(func, v)
    if success then
      result[i] = value
    else
      result[i] = "Error: " .. value
    end
  end
  return result
end

-- Define a function that doubles a number
local double = function(x)
  return x * 2
end

-- Define a function that returns the reciprocal of a number
local reciprocal = function(x)
  if x == 0 then
    error("Cannot divide by zero")
  end
  return 1 / x
end

-- Define a table of numbers
local numbers = { 1, 2, 0, 4 }

-- Call the map function with the double function and the table of numbers
local doubledNumbers = map(double, numbers)

-- Print the doubled numbers
for _, number in ipairs(doubledNumbers) do
  print(number)
end

-- Call the map function with the reciprocal function and the table of numbers
local reciprocalNumbers = map(reciprocal, numbers)

-- Print the reciprocal numbers
for _, number in ipairs(reciprocalNumbers) do
  print(number)
end

-- The output of the above code will be:
-- 2
-- 4
-- Error: Cannot divide by zero
-- 0.25
--
-- The map function applies a function to each element of a table and returns a new table with the results. In this example, we call the map function with the double function and the table of numbers, which doubles each element of the table. We also call the map function with the reciprocal function and the table of numbers, which returns the reciprocal of each element of the table. If an error occurs while applying the function, the map function returns an error message instead of the result.
-- In this example, the reciprocal function returns an error message when it is called with the value 0, which is handled by the map function. The map function uses the pcall function to call the function with the value, and returns an error message if an error occurs. This allows the map function to handle errors and continue processing the rest of the table.
-- In summary, error handling in advanced functions allows you to handle errors and continue processing data, which is useful when working with higher order functions and anonymous functions.
