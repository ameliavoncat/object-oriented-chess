require_relative './rook'

class BlackRook < Rook
  def initialize(color = "Black", icon = "\u2656")
    super(color, icon)
  end

  def validate_move
    'BlackPawn!'
  end
end
