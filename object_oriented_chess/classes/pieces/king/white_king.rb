require_relative './king'

class WhiteKing < King
  def initialize(color = "White", icon = "\u265A".light_white)
    super(color, icon)
  end
end
