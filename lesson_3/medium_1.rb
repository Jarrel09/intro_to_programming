# Question 1
# string = "The Flintstones Rock!"
# space = " "
# num = 0
# 10.times {|number| puts (" " * number) + string }



# Question 2
# statement = "The Flinstones Rock"
# new_hash = {}
# statement.each_char do |letter|
#   count = statement.count(letter)
#   new_hash[letter] = count
# end

# Question 3
# The error reads "no implicit conversion of a string to an integer" because
# ruby doesn't automatically convert the value of the integers to a string value
# when added with a string.
# solution 1: turn the value of the sum to a string: (40 + 2).to_s
# solution 2: use string interpolation: "the value of 40 + 2 is #{40 + 2}"

# Question 4
# It produces unpredictable results.

# Question 5
# def factors(number)
#   dividend = number
#   divisors = []
#   while dividend > 0
#     divisors << number / dividend if number % dividend == 0
#     dividend -= 1
#   end
#   divisors
# end

# Question 6
# in the first implementation the << method mutates the caller, whereas in the
# second method the + does not.

# Question 7
# The issue says that the local variable 'limit' is undefined. This is because
# the local variable is initialized outside of the methods scope. A solution
# would be to create a constant value for the variable or initialize the
# variable inside of the method.

# Question 8
# write a method that accepts a string as a parameter
# split the string into an array of words
# capitalize each word
# intialize a varible storing the value of the joined array.

# def titleize(string)
#   new_array = string.split(" ")
#   new_array.map { |word| word.capitalize! }
#   new_array.join(" ")
# end

# Question 9
# iterate through each of the names
# use a case statement to compare against their age
# when we find which category they belong to we assign their age category.

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }
# munsters.each_key do |name|
#   case name["age"]
#   when 0..17
#     munsters[name]["age_group"] = 'kid'
#   when 18..64
#     munsters[name]["age_group"] = 'adult'
#   else
#     munsters[name]["age_group"] = 'senior'
#   end
# end
