class Guest
  attr_accessor :guest_name, :wallet

  def initialize(guest_name, wallet)
    @guest_name = guest_name
    @wallet = wallet
  end

end
