# Question 1
 # => 1 2 3
 
# Question 2
# ! has two meanings in Ruby. When placed after a method call, it indicates that
# the method mutates the caller. However, when placed in front of a variable it 
# effectively has the meaning "not".
# 1. != means "not equal". Example: 
#     if a != 1
#       puts a
#     end

# 2. !user_name has the effect of turning an object into the opposite of their 
#   boolean value.
#   Example: !true == false
#
# 3. OPlacing ! after a something can indicate a method that mutates the caller 
#
# 4. Placing a question mark before something represents Ruby's ternary 
#   conditional statement. example: 
#   i > 10 ? "greater than" : "less than or equal to"
# 
# 5. Placing a question mark after a method signifies that the method returns a 
#   boolean value.
#
# 6. Placing !! in front of an object turns the object into its boolean 
# equivalent. Example: a = 5
#                       !!a 
#                       => true

# Question 3
# advice = "Few things in life are as important as house training your pet 
# dinosaur."
#
# new_array = advice.split
# new_array[6] = 'urgent'
# new_array.join(' ')
# or advice.gsub!('important', 'urgent')

# Question 4
# The difference between the .delete and the .delete_at method is that the
# former searches the data for that specific value and deletes it, while the
# latter deletes the data at that specific position.

# Question 5
# (10..100).include?(42)

# Question 6
# famous_words = "seven years ago..."
# famous_words.insert(0, "Four score and ")
# famous_words.prepend("Four score and ")
# "Four score and " + famous_words

# Question 7
# => 42

# Question 8
# ["Fred", "Wilma", ["Barney", "Betty"], ["BamBam", "Pebbles"]].flatten!

# Question 9
# flintstones.assoc("Barney")

# Question 10
# flintstones_hash = {}
# flintstones.each_with_index do |name, index|
#  flintstones_hash[name] = index
# end