class Cat

  def initialize(name, preferred_food,meal_time)
    @name = name
    @preferred_food = preferred_food
    @meal_time = meal_time
  end

  def eats_at
    hour = @meal_time
    am_pm = (hour >= 12) ? "pm" : "am"
    hour = case hour
    when 0, 12
      12
    when 13 .. 23
      hour - 12
    else
      hour
    end
    "#{ hour } #{ am_pm}"
  end

  def meow
    puts "My name is #{@name} and I eat #{@preferred_food} at #{eats_at}"
  end

end


buns = Cat.new("Buns","crackers",23)
butter_cup = Cat.new("Butter_cup","cheese",14)

puts buns.eats_at
puts butter_cup.eats_at

puts buns.meow
puts butter_cup.meow
