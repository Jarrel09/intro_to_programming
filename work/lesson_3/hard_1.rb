# Question 1
# Nil is returned because when a local variable is initailized in an if block,
# the variable is initialized to nil even if the block isn't executed.

#Question 2
# The output "hi there". This is because 'informal_greeting' references the
# original 'greeting' object. The String#<< method modifies the object that
# called it.

# Question 3

# A) The variables should print out "one two three" The reason is beacuse the
# method creates a scope that changes the value inside of the method, and these
# values aren't accessible outside of the method.

#B) Same thing here as A.)

#C) This one uses the String#gsub! method which mutates the method which it is
# called upon.

# Question 4
# SecureRandom.uuid
# or
