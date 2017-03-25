require_relative '../piece'

class King < Piece
  def initialize(type = "King", color, icon)
    super(type, color, icon)
  end

  def validate(start_square, target_square)
    'No validate method yet.'
    true
  end
end
