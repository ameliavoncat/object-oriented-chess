require_relative './queen'

class BlackQueen < Queen
  def initialize(color = "Black", icon = "\u265B".black)
    super(color, icon)
  end

  def validate_move
    'BlackPawn!'
  end
end
