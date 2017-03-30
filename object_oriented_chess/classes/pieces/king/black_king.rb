require_relative './king'

class BlackKing < King
  def initialize(color = "Black", icon = "\u265A".black)
    super(color, icon)
  end
end
