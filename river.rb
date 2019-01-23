class River

  attr_reader :river_name, :fishes

  def initialize(river_name, fishes)
    @river_name = river_name
    @fishes = fishes
  end

  def fishes_count()
    return @fishes.length
  end

  def bear_take_fish(fish)
    @fishes.delete(fish)
    return @fishes.length
  end

end
