-- Define the questions and answers in a table
local questions = {
  {
    question = "What is the capital of France?",
    choices = { "1. Paris", "2. Berlin", "3. Madrid" },
    answer = 1
  },
  {
    question = "What is 2+2?",
    choices = { "1. 3", "2. 4", "3. 5" },
    answer = 2
  }
  -- Add more questions as needed
}

local score = 0

-- Ask questions, iterate over the questions list
for _, q in ipairs(questions) do
  print(q.question)
  for _, choice in ipairs(q.choices) do
    print(choice)
  end
  -- Get user input
  local userAnswer = io.read("*n") -- Reads a number from the user

  -- Check answers and provide feedback
  if userAnswer == q.answer then
    print("Correct!")
    score = score + 1
  else
    print("Wrong!")
  end
end

print("Your final score is:", score)
