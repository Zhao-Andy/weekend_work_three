# Complete the method called sum_of_range, which will accept an array containing
# two numbers, and return the sum of all of the whole numbers within the range of those
# numbers, inclusive.
require 'pry'

def sum_of_range(array)
  range = []
  i = 0
  array.max.times do
    range.push(array.max - i)
    i += 1
  end
  sum = 0
  i = 0
  range.length.times do
    sum += range[i]
    i += 1
  end
  sum
end

# Driver code - don't touch anything below this line.
puts "TESTING sum_of_range..."
puts

result = sum_of_range([1, 4])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end

result = sum_of_range([4, 1])

puts "Your method returned:"
puts result
puts

if result == 10
  puts "PASS!"
else
  puts "F"
end
