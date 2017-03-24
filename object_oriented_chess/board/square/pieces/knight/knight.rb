require_relative '../piece'

class Knight < Piece
  def initialize(type = "Knight", color, icon)
    super(type, color, icon)
  end

  def validate_move
    'Worked!'
  end
end
