require_relative './queen'

class WhiteQueen < Queen
  def initialize(color = "White", icon = "\u265B".light_white)
    super(color, icon)
  end

  def validate_move
    'BlackPawn!'
  end
end
