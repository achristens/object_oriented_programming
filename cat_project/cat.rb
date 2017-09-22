class Cat
  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time <= 11
      "#{@meal_time} AM"
    else
      "#{@meal_time} PM"
    end
  end

  def meow
    "Meoooowwwrrrrr... my name is #{@name}, and I prefer to eat my #{@preferred_food} at #{eats_at}."
  end
end

thor = Cat.new("Thor", "Fish", 12)
sweet_potato = Cat.new("Sweet Potato", "Carrots", 16)

puts thor.meow
puts sweet_potato.meow
