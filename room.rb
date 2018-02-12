class Room

 attr_reader :name, :songs, :guests, :limit

  def initialize(name, songs = [], guests = [], limit)
    @name = name
    @songs = songs
    @guests = guests
    @limit = limit
  end

  def guests
    @guests
  end

  def check_room(limit)
    if limit.guests > 3
      return true
    else
      return false
    end
  end

end
