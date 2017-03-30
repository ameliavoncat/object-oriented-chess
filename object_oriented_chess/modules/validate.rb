require_relative './error'
require_relative './clear_path'

module Validate
  def self.move(move, state)
    puts 'Validate.move'
    piece = move[:start].piece

    return invalid_move if (
      !piece.validator(move) ||
      !clear_path(move, state) ||
      own_piece(move) ||
      (piece.type === 'Empty')
    )

    true
  end

  def self.own_piece(move)
    piece = move[:start].piece
    target_piece = move[:target].piece

    piece.color === target_piece.color
  end

  def self.clear_path(move, state)
    start = move[:start]
    target = move[:target]
    start_col_index = start.column_to_index
    target_col_index = target.column_to_index

    col_diff = start_col_index - target_col_index
    row_diff = start.row - target.row
    return ClearPath.diagonal(move, state) if col_diff.abs === row_diff.abs
    return ClearPath.vertical(move, state) if col_diff.abs === 0 && row_diff.abs != 0
    return ClearPath.horizontal(move, state) if col_diff.abs != 0 && row_diff.abs === 0
    return ClearPath.knight(move, state) if (col_diff.abs - row_diff.abs).abs === 1
  end

  def self.input(input)
    puts 'Validate.input'
    /[a-hA-H]\d\:[a-hA-H]\d/.match(input)
  end

  def self.invalid_move
    Error.message('validate_false')
    false
  end

end
