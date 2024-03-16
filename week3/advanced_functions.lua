--[[
--Anonymous functions and closures
--]]

-- Basic syntax and use cases
-- Anonymous functions are functions without a name. They are used to create closures, which are functions that have access to variables from an enclosing scope.
-- The basic syntax for an anonymous function is:
-- function(arg1, arg2, ...) body end
local variableName = function(arguments)
	-- body
end
-- Here's an example of an anonymous function that takes two arguments and returns their sum:
local add = function(a, b)
	return a + b
end

print(add(2, 3)) --> 5

-- Anonymous functions are often used as arguments to other functions. For example, the table.sort function takes a comparison function as an argument. Here's an example of how to use an anonymous function to sort a table of numbers in descending order:
-- Define a table of numbers
local numbers = { 1, 4, 3, 2 }

-- Sort the table in descending order
table.sort(numbers, function(a, b) return a > b end)

-- Print the sorted table
for _, number in ipairs(numbers) do
  print(number)
end

-- The output of the above code will be:
-- 4
-- 3
-- 2
-- 1

-- Higher order functions
-- A higher order function is a function that takes one or more functions as arguments, or returns a function as a result. Lua supports higher order functions, which makes it easy to work with anonymous functions.
-- Here's an example of a higher order function that takes a function as an argument and calls it with a value:
-- Define a higher order functions that takes a function as an argument
local apply = function(func, value)
  return func(value)
end

-- Define a function that doubles a number
local double = function(x)
  return x * 2
end

-- Call the higher order function with the double function
print(apply(double, 3)) --> 6

-- The apply function takes a function and a value as arguments, and calls the function with the value. In this example, we call the apply function with the double function, which doubles the value 3, resulting in 6.
-- Another example of a higher order function is the map function, which applies a function to each element of a table and returns a new table with the results. Here's an example of how to use the map function to double each element of a table of numbers:
-- Define a higher order function that applies a function to each element of a table
local map = function(func, t)
  local result = {}
  for i, v in ipairs(t) do
    result[i] = func(v)
  end
  return result
end

-- Define a function that doubles a number
local double = function(x)
  return x * 2
end

-- Define a table of numbers
local numbers = { 1, 2, 3, 4 }

-- Call the map function with the double function and the table of numbers
local doubledNumbers = map(double, numbers)

-- Print the doubled numbers
for _, number in ipairs(doubledNumbers) do
  print(number)
end

-- Callbacks and events
-- Anonymous functions are often used as callbacks in event-driven programming. For example, in a game, you might use an anonymous function to handle a mouse click event. Here's an example of how to use an anonymous function as a callback for a button click event:
-- Define a function that creates a button with a click event handler as a callback
local createButton = function(label, onClick)
  return {
    label = label,
    onClick = onClick
  }
end

-- Define a function that handles a button click event with an anonymous function as a callback
local handleClick = function()
  print("Button clicked!")
end

-- Create a button with the handleClick function as a callback
local button = createButton("Click me", handleClick)

-- Call the button's onClick event handler
button.onClick()

-- The handleClick function is an anonymous function that handles the button click event. We pass the handleClick function as a callback to the createButton function, which creates a button with the onClick event handler set to the handleClick function. When the button is clicked, the onClick event handler is called, which calls the handleClick function, resulting in the message "Button clicked!" being printed to the console.

-- Closures
-- A closure is a function that has access to variables from an enclosing scope. Closures are created when an anonymous function accesses a variable from an enclosing scope. Here's an example of a closure that uses a variable from an enclosing scope:
-- Define a function that creates a closure
local createClosure = function()
  local x = 0
  return function()
    x = x + 1
    return x
  end
end

-- Create a closure
-- The createClosure function returns an anonymous function that has access to the x variable from the enclosing scope. When the anonymous function is called, it increments the x variable and returns its value. Here's an example of how to use the createClosure function to create a closure and call it:
local counter = createClosure()

print(counter()) --> 1
print(counter()) --> 2
print(counter()) --> 3

-- The output of the above code will be:
-- 1
-- 2
-- 3

-- The counter variable is assigned the result of calling the createClosure function, which creates a closure. When the counter variable is called as a function, it calls the anonymous function that was returned by the createClosure function, resulting in the x variable being incremented and its value being returned.
-- Closures are often used to create private variables and functions. For example, you can use a closure to create a counter that cannot be accessed or modified from outside the closure. Here's an example of how to use a closure to create a private counter:
-- Define a function that creates a private counter using a closure
local createCounter = function()
  local count = 0
  return {
    increment = function()
      count = count + 1
    end,
    get = function()
      return count
    end
  }
end

-- Create a private counter
-- The createCounter function returns a table with two functions: increment and get. The increment function increments the count variable, and the get function returns the value of the count variable. Here's an example of how to use the createCounter function to create a private counter and call its functions:
local counter = createCounter()

counter.increment()
counter.increment()
counter.increment()

print(counter.get()) --> 3

-- The output of the above code will be:
-- 3
-- The counter variable is assigned the result of calling the createCounter function, which creates a private counter. When the increment function is called, it increments the count variable, and when the get function is called, it returns the value of the count variable. The count variable is private and cannot be accessed or modified from outside the closure.
-- Closures are a powerful feature of Lua that can be used to create private variables and functions, and to create functions that have access to variables from an enclosing scope.
--
-- Summary
-- Anonymous functions are functions without a name. They are used to create closures, which are functions that have access to variables from an enclosing scope. Anonymous functions are often used as arguments to other functions, as callbacks in event-driven programming, and to create private variables and functions. Closures are created when an anonymous function accesses a variable from an enclosing scope. Closures are a powerful feature of Lua that can be used to create private variables and functions, and to create functions that have access to variables from an enclosing scope.
--
--
-- Quiz
-- What is an anonymous function?
-- A function without a name
-- What is a closure?
-- A function that has access to variables from an enclosing scope
-- What is a higher order function?
-- A function that takes one or more functions as arguments, or returns a function as a result
-- What is a use case for anonymous functions?
-- As arguments to other functions, as callbacks in event-driven programming, and to create private variables and functions
-- What is a use case for closures?
-- To create private variables and functions, and to create functions that have access to variables from an enclosing scope
-- Which of the following is an example of a higher order function?
-- The map function, which applies a function to each element of a table and returns a new table with the results
-- Which of the following is an example of a closure?
-- A function that has access to a variable from an enclosing scope
-- Which of the following is an example of a use case for anonymous functions?
-- As a callback for a button click event
-- Which of the following is an example of a use case for closures?
-- To create a private counter that cannot be accessed or modified from outside the closure
-- Which of the following is an example of a use case for higher order functions?
-- To sort a table of numbers in descending order
