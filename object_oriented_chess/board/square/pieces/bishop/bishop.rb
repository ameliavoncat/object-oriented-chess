require_relative '../piece'

class Bishop < Piece
  def initialize(type = "Pawn", color, icon)
    super(type, color, icon)
  end

  def validate_move
    'Worked!'
  end
end
