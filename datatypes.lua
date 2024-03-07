--[[
    nil -> used to differentiate the value from having some data or no (nil) data
    boolean -> true or false
    number -> represents real numbers (double precision floating point numbers)
    string -> represents a sequence of characters
    function -> represents a method that is writen in C or Lua
    userdata -> represents arbitrary C data
    thread -> represents independent threads of execution
    table -> represents ordinary arrays, symbol tables, sets, records, graphs, trees, etc.
             and implements associative arrays. It can hold any value except nil
]]

-- Type Function
print(type("Hello World")) -- string
t = 10
print(type(5.8*t)) -- number
print(type(true)) -- boolean
print(type(print)) -- function
print(type(nil)) -- nil
print(type(type(X))) -- string