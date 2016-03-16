Create a method that takes two integers as arguments
  - add the two integers
  - Print the result
  
def sum(num1, num2)
  answer  = num1 + num2
  print answer
end

Create a method that accepts an array as an argument
  - create a variable that will hold the value of the strings
  - iterate through each of the strings in the array
    - add each value to the variable
    
def concate(array)
  new_string = nil
  array.each |string| do
    new_string << string
  end
  
create a method that accepts an array as an argument
  - create  variable to hold a blank array
  -iterate through the array adding every odd index value to new array
  - print new array