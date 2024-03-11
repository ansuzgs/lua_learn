-- function returning the max between two numbers
function max(num1, num2)
    if (num1 > num2) then
        return num1
    else
        return num2
    end
end

-- Calling the function
print("The maximum of 10 and 4 is:", max(10, 4))
print("The maximum of 10 and 14 is:", max(10, 14))


-- Assigning and passing functions
myprint = function(param)
    print("This is my print function - ##", param, "##")
end

function add(num1, num2, functionPrint)
    result = num1 + num2
    functionPrint(result)
end

add(10, 5, myprint)
add(10, 5, print)

-- Function with Variable Arguments
function average(...)
    result = 0
    local arg = {...}
    for i, v in ipairs(arg) do
        result = result + v
    end
    return result/#arg
end

print("The average is", average(10, 5, 3, 4, 5, 6))