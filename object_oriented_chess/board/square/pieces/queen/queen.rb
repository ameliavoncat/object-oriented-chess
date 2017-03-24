require_relative '../piece'

class Queen < Piece
  def initialize(type = "Queen", color, icon)
    super(type, color, icon)
  end

  def validate_move
    'Worked!'
  end
end
