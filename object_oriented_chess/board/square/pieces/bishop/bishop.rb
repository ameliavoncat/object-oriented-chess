require_relative '../piece'

class Bishop < Piece
  def initialize(type = "Pawn", color, icon)
    super(type, color, icon)
  end

  def validate(start_square, target_square)
    'No validate method yet.'
    true
  end
end
