# Amount of cars available
cars = 100
# How much each car can fit in
space_in_a_car = 4
# How many drivers are available
drivers = 30
# How many passengers are available
passengers = 90
# How many cars that are not driven based on how many drivers there are
cars_not_driven = cars - drivers
# Total amount of cars that are driven
cars_driven = drivers
# Total carpool capacity of all cars, based on how many cars that are being driven and how many can fit
carpool_capacity = cars_driven * space_in_a_car
# How many passengers that are required per car
average_passengers_per_car = passengers / cars_driven

puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car."
