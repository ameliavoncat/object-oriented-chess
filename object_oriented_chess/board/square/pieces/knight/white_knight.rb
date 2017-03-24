require_relative './knight'

class WhiteKnight < Knight
  def initialize(color = "White", icon = "\u265A")
    super(color, icon)
  end

  def validate_move
    'BlackPawn!'
  end
end
