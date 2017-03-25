require_relative '../piece'

class Pawn < Piece
  def initialize(type = "Pawn", color, icon)
    super(type, color, icon)
  end

  def validate(start_square, target_square)
    return validate_capture(start_square, target_square) if target_square[:is_occupied]
    validate_move(start_square, target_square)
  end
end
