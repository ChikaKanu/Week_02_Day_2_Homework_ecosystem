require('minitest/autorun')
require('minitest/rg')
require_relative('../fish.rb')
require_relative('../river.rb')
require_relative('../bears.rb')

class FishTest < MiniTest::Test

  def setup()
    @fish = Fish.new("Fish_6")
  end

  def test_can_create_fish()
    assert_equal(Fish, @fish.class())
  end

  def test_fish_name()
    assert_equal("Fish_6", @fish.fish_name())
  end

end
