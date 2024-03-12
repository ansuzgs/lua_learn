function generate_random_math_questions()
  local num1 = math.random(0, 10)
  local num2 = math.random(0, 10)
  local operators = {"+", "-", "*", "/"}
  local operator = operators[math.random(1, #operators)]
  local question = num1 .. " " .. operator .. " " .. num2
  -- calculate the answer
  return load("return " .. question)(), question
end

-- Main game logic
local score = 0
local totalQuestions = 5

for i = 1, totalQuestions do
  local result, question = generate_random_math_questions()
  print("Question ".. i ..": " .. question)
  local answer = tonumber(io.read())

  if result == answer then
    print("Correct!")
    score = score + 1
  else
    print("Incorrect! The correct answer was: " .. result)
  end
end

print("Your final score is: " .. score .. "/" .. totalQuestions)