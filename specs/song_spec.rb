require("minitest/autorun")
require_relative("../song")

class TestSong < MiniTest::Test

  def setup
    @song_1 = Song.new("Enjoy the silence")
  end

  def test_song_has_title()
    assert_equal("Enjoy the silence", @song_1.title())
  end
end
