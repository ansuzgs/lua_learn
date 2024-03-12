-- Using pcall

local function mightFail()
    error("This is an error message")
end

local success, message = pcall(mightFail)
if success then
    print("Function executed successfully")
else
    print("Function failed with error: " .. message)
end

-- Using xpcall

local function mightAlsoFail()
    error("Another error message")
end

local function errorHandler(err)
    print("Error caight: " .. err)
    -- Perform additional error handling here
end

local success = xpcall(mightAlsoFail, errorHandler)
if success then
    print("Function executed successfully")
else
    print("Function failed, but err was handled")
end