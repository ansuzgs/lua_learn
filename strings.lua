--[[
    STRINGS
]]

string1 = "Lua"
print("\"String 1 is \"", string1)

string2 = "Tutorial"
print("String 2 is ", string2)

string3 = [["Lua Tutorial"]]
print("String 3 is ", string3)

-- Strings manipulation
string = "Lua Tutorial"
print(string.upper(string))
print(string.lower(string))
print(string.gsub(string, "a", "e"))
print(string.find(string, "a"))
print(string.reverse(string))
print(string.len(string))
print(string.rep(string, 3))
print(string .. string)
print(string.char(97))
print(string.byte("a"))

-- Basic string formatting
print(string.format("This is a %s", string))