require_relative '../../../../modules/error'
require_relative './pawn'

class WhitePawn < Pawn
  def initialize(color = "White", icon = "\u265F".light_white)
    super(color, icon)
  end

  def validate_move(start_square, target_square)
    puts 'validating move'
    validated = (
        target_square.row === start_square.row + 1 ||
        ( (target_square.row === start_square.row + 2) && (@first_move) )
      ) && (
        target_square.column === start_square.column
      )

    Error.message('validate_false') if !validated
    validated
  end

  def validate_capture(start_square, target_square)
    puts 'validating capture'
    start_column = column_to_index(start_square.column)
    target_column = column_to_index(target_square.column)

    validated = (
        target_column === start_column + 1 ||
        target_column === start_column - 1
      ) && (
        target_square.row === start_square.row + 1
      )

    Error.message('validate_false') if !validated
    validated
  end
end