require_relative './rook'

class WhiteRook < Rook
  def initialize(color = "White", icon = "\u265C")
    super(color, icon)
  end

  def validate_move
    'BlackPawn!'
  end
end
