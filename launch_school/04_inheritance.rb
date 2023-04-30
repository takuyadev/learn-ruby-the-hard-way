module Walkable
  def Walkable
    "I'm walking."
  end
end

module Swimmable
  def swim
    "I'm swimming."
  end
end

module Climbable
  def climb
    "I'm climbing"
  end
end

class Animal
  def initialize(n)
    @name = n
  end

  include Walkable

  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  DOGYEARS = 7
  include Swimmable
  include Climbable
  attr_accessor :name

  def initialize(name, color)
    super(name)
    @color = color
  end

  def speak
    # "#{self.name} says arf!"
    super + " from GoodDog class"
  end

  private

  def human_years
    age * DOG_YEARS
  end
end

class Cat < Animal
end

class Bear < Animal
  def initialize(name, color)
    super(name)
    @color = color
  end
end

sparky = GoodDog.new("Sparky", "White")
paws = Cat.new("Paws")
bear = Bear.new("Bear", "black")
puts sparky.speak
puts paws.speak

module Mammal
  class Dog
    def speak(sound)
      p "#{sound}"
    end
  end

  class Cat
    def say_name(name)
      p "#{name}"
    end
  end

  def self.some_out_of_place_method(num)
    num ** 2
  end
end

buddy = Mammal::Dog.new
kitty = Mammal::Cat.new
buddy.speak("Arf!")
kitty.say_name("kitty")
puts Mammal.some_out_of_place_method(4)

class Vehicle
  @@number_of_cars = 0
  attr_reader :number_of_cars, :age

  def initialize
    @@number_of_cars += 1
    @age = 10
  end

  def self.display_cars
    @@number_of_cars
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def drive
    puts "This car is driving."
  end

  private

  def check_age
    puts age
  end
end

module Honk
  def honk
    puts "HONK"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  NUMBER_OF_DOORS = 2
  include Honk
end

puts Vehicle.display_cars

truck = MyTruck.new
truck.honk
truck.drive

class Student
  def initialize(name, grade)
    @name = name
    @grade = grade
  end

  def better_grade_than?(student)
    grade > student.grade
  end

  protected

  attr_reader :grade
end

joe = Student.new("Joe", 100)
bob = Student.new("Bob", 10)

puts "Well done!" if joe.better_grade_than?(bob)
