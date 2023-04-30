class GoodDog
  #   New, shorter method
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  #   Old, longer way of doing
  #   def name
  #     @name
  #   end

  #   def name=(n)
  #     @name = n
  #   end

  def speak
    # Good practice to use getter/instance method instead of instance variable
    "#{name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.width = w
  end
end

sparky = GoodDog.new("Sparky", 10, 10)
puts sparky.speak
puts sparky.name
sparky.name = "Spartacus"
puts sparky.name

class MyCar
  attr_accessor :color, :speed
  attr_reader :year

  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @speed = 0
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
end
