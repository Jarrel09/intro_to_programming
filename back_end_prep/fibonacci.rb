# def fibonacci(number)
#   if number < 2
#     number
#   else
#     fibonacci(number - 1) + fibonacci(number - 2)
#   end
# end

# puts fibonacci(6)

# array = [1, 2, 3, 4, 5 ]
# array.each_with_index do |val, index|
#   puts "index: #{index} value: #{val}"
# end

def countdown(number)
  if number > 0
    puts number
    countdown(number - 1)
  else
    puts number
  end
end
      

countdown(5)