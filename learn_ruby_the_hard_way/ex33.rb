i = 0
numbers = []

puts "How many times do you wanna loop?"
limit = gets.chomp.to_i

while i < limit
  puts "At the top i is #{i}"
  numbers.push(i)

  i += 1
  puts "Numbers now: ", numbers
  puts "At the bottom i is #{i}"
end

puts "The numbers: #{numbers}"
