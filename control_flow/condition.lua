--[[
    CONDITIONALS
]]

-- if statement
print("If statement")
local a = 10
if (a < 20) then
    print("a is less than 20")
end

-- if else statement
print("If else statement")
if (a < 20) then
    print("a is less than 20")
else
    print("a is greater than 20")
end

-- nested if statement
print("Nested if statement")
if (a == 10) then
    if (a < 20) then
        print("a is less than 20")
    end
end
