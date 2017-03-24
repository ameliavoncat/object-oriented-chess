require_relative '../piece'

class King < Piece
  def initialize(type = "King", color, icon)
    super(type, color, icon)
  end

  def validate_move
    'Worked!'
  end
end
