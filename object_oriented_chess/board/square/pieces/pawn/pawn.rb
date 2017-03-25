require_relative '../piece'

class Pawn < Piece
  def initialize(type = "Pawn", color, icon)
    super(type, color, icon)
  end

  def validate(start_square, target_square)
    return validate_capture(start_square, target_square) if target_square[:is_occupied]
    validate_move(start_square, target_square)
  end

  def validate_move(start_square, target_square)
    validated = (target_square[:row] ===
      start_square[:row] + 1 || ((target_square[:row] === start_square[:row] + 2) && (@first_move))) &&
      (target_square[:column] === start_square[:column])
  end

  def validate_capture(start_square, target_square)
    validated = (target_square[:column] ===
      start_square[:column] + 1 || target_square[:column] === start_square[:column] - 1) &&
      (target_square[:row] === start_square[:row] + 1)
  end
end
