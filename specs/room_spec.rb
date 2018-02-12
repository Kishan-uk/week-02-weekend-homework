require("minitest/autorun")
require_relative("../room")
require_relative("../song")
require_relative("../guest")

class TestRoom < MiniTest::Test

  def setup
    @song_1 = Song.new("Enjoy the silence")
    @song_2 = Song.new("Behind the wheel")
    @song_3 = Song.new("Personal Jesus")
    songs = [@song_1, @song_2, @song_3]
    @guest_1 = Guest.new("Dave")
    @guest_2 = Guest.new("Alan")
    @guest_3 = Guest.new("Martin")
    @guest_4 = Guest.new("Fletch")
    guests = [@guest_1, @guest_2, @guest_3]
    @room_1 = Room.new("Room 1", songs, guests, 3)

  end

  # def test_room_has_songs
  #   assert_equal(@list_of_songs, @room_1.songs)
  # end

  def test_room_has_songs
    assert_equal(3, @room_1.songs.count())
  end

  def test_check_in_guests
    assert_equal(3, @room_1.guests.count())
  end

  def test_check_out_guests
    assert_equal(0, @room_1.guests.clear.count())
  end

  def test_room_has_too_many_guests
    assert_equal(false, @room_1.guests.count(check_room))
  end
end
