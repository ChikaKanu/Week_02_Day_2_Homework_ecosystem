require('minitest/autorun')
require('minitest/rg')
require_relative('../bears.rb')
require_relative('../fish.rb')
require_relative('../river.rb')

class BearsTest < MiniTest::Test

  def setup()
    @fish = Fish.new("Fish_6")
    @food = ["fish_1", "fish_2", "fish_3"]
    @bears = Bears.new("Yogi", "Grizzly", @food)
  end

  def test_create_bear()
    assert_equal(Bears, @bears.class())
  end

  def test_bear_name
    assert_equal("Yogi", @bears.bear_name())
  end

  def test_bear_type
    assert_equal("Grizzly", @bears.bear_type())
  end

  def test_bear_food_count
    assert_equal(3, @bears.food_count())
  end

  # def test_bear_take_fish_from_river()
  #   @fishes1 =
  #   @fishes.bear_take_fish(fish_6)
  #   @bears.bear_take_fish_from_river(@fishes)
  #   assert_equal(2, @bears.food_count())
  # end
end
#
# @stop1 = BusStop.new("Elm Row")
#   @stop1.add_to_queue(@passenger1)
#   @stop1.add_to_queue(@passenger2)
#   @bus.pick_up_from_stop(@stop1)
#   assert_equal(2, @bus.passenger_count())
#   assert_equal(0, @stop1.queue_length())
