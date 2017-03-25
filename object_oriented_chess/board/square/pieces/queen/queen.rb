require_relative '../piece'

class Queen < Piece
  def initialize(type = "Queen", color, icon)
    super(type, color, icon)
  end

  def validate(start_square, target_square)
    p 'No validate method yet.'
    true
  end
end
