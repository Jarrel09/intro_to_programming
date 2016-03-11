def take_proc(proc)
  [1, 2, 3, 4, 5].each do |number|
    proc.call number
  end
end

proc = Proc.new do |a| # It doesn't matter what we name the parameter....
  puts "#{a}. Proc being called in the method!"
end

take_proc(proc)