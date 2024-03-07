--[[
    ARRAYS
]]

-- One dimensional array
print("One-dimensional array")
array = {"Lua", "Tutorial"}

for i = 0, 2 do
    print(array[i])
end

array = {}
for i = -2, 2 do
    array[i] = i*2
end
for i = -2, 2 do
    print(array[i])
end

-- Multi dimensional array
-- initializing the array
print("Multi-dimensional array")
array = {}

for i = 1, 3 do
    array[i] = {}
    for j = 1, 3 do
        array[i][j] = i*j
    end
end

-- Accessing the array
for i = 1, 3 do
    for j = 1, 3 do
        print(array[i][j])
    end
end
