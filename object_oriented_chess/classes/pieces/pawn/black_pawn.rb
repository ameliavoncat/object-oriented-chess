require_relative './pawn'

class BlackPawn < Pawn
  def initialize(color = "Black", icon = "\u265F".black)
    super(color, icon)
  end

  def validate_move(start_square, target_square)
    puts 'validating move'
    validated = (
        target_square.row === start_square.row - 1 ||
        ( (target_square.row === start_square.row - 2) && (@first_move) )
      ) && (
        target_square.column === start_square.column
      )
  end

  def validate_capture(start_square, target_square)
    puts 'validating capture'
    start_column = start_square.column_to_index
    target_column = target_square.column_to_index

    validated = (
        target_column === start_column + 1 ||
        target_column === start_column - 1
      ) && (
        target_square.row === start_square.row - 1
      )
  end
end
