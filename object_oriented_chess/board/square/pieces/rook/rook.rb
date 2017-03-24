require_relative '../piece'

class Rook < Piece
  def initialize(type = "Rook", color, icon)
    super(type, color, icon)
  end

  def validate_move
    'Worked!'
  end
end
