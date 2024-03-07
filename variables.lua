local d, f= 5, 10 -- declaration of d and f as local variables
d, f = 5, 10 -- declaration of d and f as global variables
d, f = 10 -- declaration of d and f as global variables, but f is nil

-- Variable definition
local a, b

-- Initialization
a = 10
b = 30

print("Value of a:", a)
print("Value of b:", b)

-- Swapping
b, a = a, b

print("Value of a:", a)
print("Value of b:", b)

f = 70.0/3.0
print("Value of f:", f)