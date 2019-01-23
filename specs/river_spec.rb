require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bears.rb')

class RiverTest < MiniTest::Test

  def setup()
    @fishes = ["Fish_6"]
    @river = River.new("Amazon", @fishes)
  end

  def test_can_create_river()
    assert_equal(River, @river.class())
  end

  def test_river_name
    assert_equal("Amazon", @river.river_name())
  end

  def test_fishes_in_river()
    assert_equal(1, @river.fishes_count())
  end

  def test_bear_take_fish()
    @river.bear_take_fish("Fish_6")
    assert_equal(0, @river.fishes_count())
  end
end
