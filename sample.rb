
def guess(number)
  case
  when number <= 50
    puts "#{number} is equal to or less than 50"
  when number > 50 && number <= 100
    puts "#{number} is between 51 and 100"
  else number > 100
    puts "#{number} is greater than 100"
  end
end

def guess_2(num)
  case num
  when 0..50
    puts "#{num} is between 0 and 50"
  when 51..100
    puts "#{num} is between 51 and 100"
  else
    if num < 0
      puts "You can't enter a negative num!"
    else
      puts "#{num} is above 100"
    end
  end
end

guess(5)
guess_2(200)