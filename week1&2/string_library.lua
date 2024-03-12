-- Basic operations

local test_string = "Hello, Lua!"

print("test_string = " .. test_string)
print("string.len(test_string) = " .. string.len(test_string))
print("string.upper(test_string) = " .. string.upper(test_string))
print("string.lower(test_string) = " .. string.lower(test_string))
print("string.sub(test_string, 2, 4) = " .. string.sub(test_string, 2, 4))

-- Pattern matching

print("string.match(test_string, ', ') = " .. string.match(test_string, ', '))
local dateStr = "Today is 12/03/2024."
local d, m, y = string.match(dateStr, "(%d+)/(%d+)/(%d+)")
print("Day:", d, "Month:", m, "Year:", y)  -- Output: Day: 12 Month: 03 Year: 2024
local start, endpos = string.find(test_string, ', ')
print("start, end = string.find(test_string, ', ') -> start = " .. start .. "; endpos = " .. endpos)
print("string.gmatch(test_string, 'l'):")
for char in string.gmatch(test_string, 'l') do
    print(char)
end
print("string.gsub(test_string, 'l', 'a') = " .. string.gsub(test_string, 'l', 'a'))