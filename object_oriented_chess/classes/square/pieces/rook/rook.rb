require_relative '../../../../modules/error'
require_relative '../piece'

class Rook < Piece
  def initialize(type = "Rook", color, icon)
    super(type, color, icon)
  end

  def validate(move)
    start = move[:start]
    target = move[:target]


    validated = (
        start.column === target.column && start.row != target.row
        # path_is_clear(move, state, 'column')
      ) || (
        start.row === target.row && start.column != target.column
        # path_is_clear(move, state, 'row')
      )

    Error.message('validate_false') if !validated
    validated
  end

  # def path_is_clear(move, state, direction)
  #   start = move[:start]
  #   target = move[:target]
  #   case direction
  #   when 'column'
  #
  #   when 'row'
  #     index = start[:row]
  #
  #     while index < target[:row]
  #
  #   when 'diagonal'
  #
  #   end
  # end
end
