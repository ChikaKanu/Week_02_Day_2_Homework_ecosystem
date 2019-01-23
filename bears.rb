class Bears

  attr_reader :bear_name, :bear_type, :food

  def initialize(bear_name, bear_type, food)
    @bear_name = bear_name
    @bear_type = bear_type
    @food = food
  end

  def food_count()
    return @food.length()
  end

  def take_food(fish)
    @food << fish
  end
#
#   def bear_take_fish_from_river(fishes)
#     for fish in river.fishes
#       @food << fish
#       river.fishes.delete(fish)
#       return @food.length
#     end
#   end
end
