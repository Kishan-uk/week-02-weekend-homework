require("minitest/autorun")
require_relative("../guest")

class TestGuest < MiniTest::Test

  def setup
    @guest_1 = Guest.new("Dave")
    @guest_2 = Guest.new("Alan")
    @guest_3 = Guest.new("Martin")
  end

  def test_guest_has_name()
    assert_equal("Dave", @guest_1.guest_name())
  end

end
