require_relative '../piece'

class Rook < Piece
  def initialize(type = "Rook", color, icon)
    super(type, color, icon)
  end

  def validate(start_square, target_square)
    'No validate method yet.'
    true
  end
end
