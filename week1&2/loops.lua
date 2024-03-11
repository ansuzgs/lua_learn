--[[
    LOOPS
]]

-- while loop
print("While loop")
local i = 0
while (i < 10) do
    print(i)
    i = i + 1
end

-- for loop
-- fot init, max/min, increment do
print("For loop")
for i = 0, 10, 1 do
    print(i)
end

-- repeat until loop
print("Repeat until loop")
i = 0
repeat
    print(i)
    i = i + 1
until (i > 10)

-- nested loops
print("Nested loops")
for i = 0, 5, 1 do
    for j = 0, 5, 1 do
        print(i, j)
    end
end

-- break statement
print("Break statement")
for i = 0, 10, 1 do
    if (i > 5) then
        break
    end
    print(i)
end