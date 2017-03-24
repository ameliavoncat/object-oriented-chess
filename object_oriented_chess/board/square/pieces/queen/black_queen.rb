require_relative './queen'

class BlackQueen < Queen
  def initialize(color = "Black", icon = "\u2655")
    super(color, icon)
  end

  def validate_move
    'BlackPawn!'
  end
end
