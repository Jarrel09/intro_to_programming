# def contains?(array)
#   array.each do |value|
#     if /lab/ =~ value
#       puts value
#     end
#   end
# end

# a = ["laboratory", "experiment", "pans labyrinth", "elaborate", "polar bear"]

# contains?(a)

def execute(&block)
  block.call
end

execute { puts "Hello from inside the execute method!" }