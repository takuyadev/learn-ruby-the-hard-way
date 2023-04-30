class GoodDog
  DOG_YEARS = 7
  @@number_of_dogs = 0
  attr_reader :name, :age

  def initialize(n, a)
    @@number_of_dogs += 1
    @name = n
    @age = a * DOG_YEARS
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def to_s
    "This dog's name is #{name} and it is #{age} in dog years."
  end
end

dog1 = GoodDog.new("Sparky", 10)
dog2 = GoodDog.new("Jasper", 16)

puts GoodDog.total_number_of_dogs
puts dog2.age
puts dog2

class MyCar
  attr_accessor :speed
  attr_reader :year

  def initialize(year, color, model, speed)
    @year = year
    @color = color
    @model = model
    @speed = 0
  end

  def self.gas_mileage(miles, gallon)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def car_age
    puts self.year
  end

  def speed_up(speed)
    self.speed += speed
  end

  def brake(speed)
    self.speed -= speed
  end

  def shut_down()
    self.speed = 0
  end

  def spray_paint(color)
    self.color = color
  end

  def to_s
    self
  end
end

car1 = MyCar.new(2000, "Red", "Idk", 100)
puts car1
