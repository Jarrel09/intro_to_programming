a = [1, 2, 3]

def mutate(array)
  array.last
end

p "Before mutate method: #{a}"
p mutate(a)
p "After mutate method: #{a}"