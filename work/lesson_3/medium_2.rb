# Question 1
# loop through each of the keys in the array
# initialize a variable for the total
# if the gender is male
#   add the value to the total
# return the total

# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" }
# }

# total = 0
# munsters.each do |name, etc|
#   total += etc["age"] if etc["gender"] == "male"
# end

# Question 2
# munsters = {
#   "Herman" => { "age" => 32, "gender" => "male" },
#   "Lily" => { "age" => 30, "gender" => "female" },
#   "Grandpa" => { "age" => 402, "gender" => "male" },
#   "Eddie" => { "age" => 10, "gender" => "male" },
#   "Marilyn" => { "age" => 23, "gender" => "female"}
# }

# munsters.each do |name, etc|
#   puts "#{name} is a #{etc["age"]} year old #{etc["gender"]}."
# end

#Question 3

#Question 4
# split string into an array
# initiate blank string
# loop through array values adding each one to the begging  of the string

# sentence = "Humpty Dumpty sat on a wall."
# s_array = sentence.split(' ')
# blank_array = []
# s_array.each do |word|
#   blank_array.unshift(word)
# end

# puts blank_array.join(' ') + "."

# Question 5
# The output is 34 signifying that the initial variable value of 42 remains
# unchanged. The method doesn't change the value because it isn't direclty 
# modifying the variable. Rather, it makes  copy of the value that the variable
# holds in order to create a new argument and then modify it within the function.

#Question 6
# the data changes

#Question 7
# paper

#Question 8
# Output will be no.
