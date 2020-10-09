-- the fizzbuzzer function reads the two arguments (num1, num2) and inserts all the numbers between the two in a table,
-- replacing multiples of 3 with 'fizz', multiples of 5 with 'buzz', and multiples of both with 'fizzbuzz'

function fizzBuzzer(num1,num2) -- initialize the function
  local fbTable = {}           -- initialize the table
  if type(num1) ~= 'number' or type(num2) ~= 'number' then -- input validation (makes sure both arguments are numbers)
    print("Please enter a valid number and try again.")
    os.exit()
  else
    for i=num1,num2 do           -- for each number between the two arguments (inclusive), iterate
      if i == 0 then             -- zero isn't technically divisible by anything, but is a number so should still be included
        table.insert(fbTable,i)
      elseif i % 3 == 0 and i % 5 == 0 then -- if divisible by 3 and 5, insert 'FizzBuzz'
        table.insert(fbTable,"FizzBuzz")
      elseif i % 3 == 0 then     -- if divisible by 3, insert 'Fizz'
        table.insert(fbTable,"Fizz")
      elseif i % 5 == 0 then     -- if divisible by 5, insert 'Buzz'
        table.insert(fbTable,"Buzz")
      else                       -- if not divisible by either 3 or 5, insert the number
        table.insert(fbTable,i)
    end
  end
end
  return fbTable               -- return the table
end

function getInput()            -- this function gets the input from the user
  print("Please enter the first number: ")
  local num1 = io.read("*n")
  print("\nPlease enter the second number: ")
  local num2 = io.read("*n")
  return num1, num2            -- return the user's input for the two arguments
end

function displayTable(table)   -- this function displays the table
  print("\nThe altered table: ")
  for k,v in pairs(table) do
    print(table[k])
  end
end

function main()
  num1, num2 = getInput()        -- call the function for getting the two arguments, initialize variables for the numbers
  fbTable = fizzBuzzer(num1, num2) -- receive the table from the function, using the two arguments from the user
  displayTable(fbTable)          -- call the function that displays the table
end

main() -- call the main function (start the program)
