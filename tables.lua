--[[
    TABLES
]]

-- Simple table
mytable = {}

print("Type of mytable is ", type(mytable))

mytable[1] = "Lua"
mytable["wow"] = "Tutorial"

print("mytable Element at index 1 is ", mytable[1])
print("mytable Element at index wow is ", mytable["wow"])

-- Alternatetable and my table refers to same table
alternatetable = mytable

print("alternatetable Element at index 1 is ", alternatetable[1])
print("alternatetable Element at index wow is ", alternatetable["wow"])

alternatetable["wow"] = "I changed it"

print("mytable Element at index wow is ", mytable["wow"])

-- Only variable released and not table
alternatetable = nil
print("alternatetable is ", alternatetable)

-- mytable is still accessible
print("mytable Element at index wow is ", mytable["wow"])

mytable = nil
print("mytable is ", mytable)

-- Table Concatenation
fruits = {"banana", "orange", "apple"}

-- returns concatenated string of table
print("Concatenated string ", table.concat(fruits))

-- concatenate with a character
print("Concatenated string ", table.concat(fruits, ", "))

-- concatanet fruits based on index
print("Concatenated string ", table.concat(fruits, ", ", 2, 3))

-- Insert and remove elements
fruits = {"banana", "orange", "apple"}

-- insert a fruit at the end
table.insert(fruits, "mango")
print("Fruit at index 4 is ", fruits[4])

-- insert fruit at the beginning
table.insert(fruits, 1, "grapes")
print("Fruit at index 1 is ", fruits[1])

print("The maximum elements in table is ", #fruits)

print("The last element is ", fruits[5])

-- remove the last element
table.remove(fruits)
print("The previous last element is ", fruits[5])

-- sort the table
for key, value in ipairs(fruits) do
    print(key, value)
end
table.sort(fruits)
print("Sorted table")
for key, value in ipairs(fruits) do
    print(key, value)
end

