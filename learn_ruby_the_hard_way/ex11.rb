print "How old are you? "
age = gets.chomp
print "How tall are you? "
height = gets.chomp
print "How much do you weigh? "
weight = gets.chomp.to_i
print "Let's do some math."
int = gets.chomp.to_i

puts "So, you're #{age} old, #{height} tall, and #{weight} heavy? Man, with some math #{weight - int}."
