require_relative './pawn'

class BlackPawn < Pawn
  def initialize(color = "Black", icon = "\u2659")
    super(color, icon)
  end

  def validate_move
    'BlackPawn!'
  end
end
