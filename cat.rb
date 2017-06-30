class Cat

  def initialize(name, preferred_food, meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    if @meal_time >= 12
      return "#{@meal_time} PM"
    else
      "#{@meal_time} AM"
    end
  end

  def meow
    puts "My name is #{@name} and i eat #{@preferred_food} at #{eats_at}"
  end
end

cat1 = Cat.new("Paws", "Tuna", 12)
cat2 = Cat.new("Mittens", "Tuna", 9)
