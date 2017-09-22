class Cat
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end
end

squish = Cat.new("Squish", "Fish", 12)

puts squish
