#Exercise 1
#[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each { |value| puts value }

#Exercise 2
#[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each { |value| puts value if value > 5 }

 #Exercise 3
# new_array = []
# [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].each do |value|
#   if value.odd?
#     new_array.push(value)
#   end
# end
# puts new_array

#Exercise 4
#[1, 2, 3, 4, 5, 6, 7, 8, 9, 10].push(11).unshift(0)

#Exercise 5
# arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11]
# arr.pop
# arr.push(3)

#Exercise 6
array = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 3]
array.uniq!

#Exercise 7
# An array is an ordered list of comma separated values, whereas a hash is a 
# group of key-value pairs.

#Exercise 8
new_hash = {
  :car_model => 'jetta'
}
new_hash {
  car_model: 'jetta'
}

#Exercise 9
h = {a:1, b:2, c:3, d:4}
  #1
  h[:b]
  
  #2
  h[:e] = 5
  
  #3
  h.delete_if {|key,value| value < 3.5}
  
#Exercise 10
# Most definitely! Example 1 is a hash with an array as values and Example 2
# is an array of hashes.
  #Example 1
  new_hash = {
    car_style: ['sedan', 'hatchback', 'crossover', 'minivan']
  }
  
  #Example 2
  test_scores = [
    {english: 92},
    {science: 88}
    ]
    
# Exercise 11
# www.ruby-lang.org

# Exercise 12
contacts["Joe Smith"][:email]   = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:phone]   = contact_data[0][2]

contacts["Sally Johnson"][:email]   = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:phone]   = contact_data[1][2]

# Exercise 13

contacts["Joe Smith"][:email]
contacts["Joe Smith"][:address]
contacts["Sally Johnson"][:email]
contacts["Sally Johnson"][:address]

# Exercise 15
array_15 = ['snow', 'winter', 'ice', 'slippery', 'salted roads', 'white trees']
array_15.delete_if { |word| word.start_with?('s', 'w') }

#Exercise 16
a = ['white snow', 'winter wonderland', 'melting ice',
     'slippery sidewalk', 'salted roads', 'white trees']
a.map { |word| word.split(' ').join('') }

#Exercise 17
# These hashes are the same.

