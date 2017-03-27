require_relative './error'

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
    return clear_diagonal(move, state) if col_diff.abs === row_diff.abs
    return clear_vertical(move, state) if col_diff.abs === 0 && row_diff.abs != 0
    return clear_horizontal(move, state) if col_diff.abs != 0 && row_diff.abs === 0
    return clear_knight(move, state) if (col_diff.abs - row_diff.abs).abs === 1
  end

  def self.clear_diagonal(move, state)
    puts('clearing diagonal')
    start = move[:start]
    target = move[:target]
    col_index = start.column_to_index
    target_col_index = target.column_to_index

    row = start.row.to_i
    target_row = target.row.to_i

    if row < target_row && col_index < target_col_index
      while row < target_row
        col_index += 1
        row += 1
        return not_clear if state[row][col_index].piece.type != 'Empty'
      end
    elsif row < target_row && col_index > target_col_index
      while row < target_row
        col_index -= 1
        row += 1
        return not_clear if state[row][col_index].piece.type != 'Empty'
      end
    elsif row > target_row && col_index < target_col_index
      while row > target_row
        col_index += 1
        row -= 1
        return not_clear if state[row][col_index].piece.type != 'Empty'
      end
    elsif row > target_row && col_index > target_col_index
      while row > target_row
        col_index -= 1
        row -= 1
        return not_clear if state[row][col_index].piece.type != 'Empty'
      end
    end
  true
  end

  def self.index_to_column(index)
    letters = ('A'..'H').to_a
    letters[index]
  end

  def self.clear_vertical(move, state)
    puts ('clearing vertical')
    start = move[:start]
    target = move[:target]
    col_index = start.column_to_index
    target_col_index = target.column_to_index

    row = start.row.to_i
    target_row = target.row.to_i
    puts(row)
    puts target_row
    if row < target_row
      while row < target_row
        row += 1
        return not_clear if state[row][col_index].piece.type != 'Empty'
      end
    elsif row > target_row
      while row > target_row
        row -= 1
        puts  row
        puts row -= 1
        puts state[row][col_index].piece
        return not_clear if state[row][col_index].piece.type != 'Empty'
      end
    end
    true
  end

  def self.clear_horizontal(move, state)
    puts ('clearing horizontal')
    start = move[:start]
    target = move[:target]
    col_index = start.column_to_index
    target_col_index = target.column_to_index

    row = start.row.to_i
    target_row = target.row.to_i

    if col_index < target_col_index
      while col_index < target_col_index
        col_index += 1
        return not_clear if state[row][col_index].piece.type != 'Empty'
      end
    elsif col_index > target_col_index
      while col_index > target_col_index
        col_index -= 1
        return not_clear if state[row][col_index].piece.type != 'Empty'
      end
    end
  end

  def self.clear_knight(move, state)
    puts('clearing knight')
    true
  end

  def self.input(input)
    puts 'Validate.input'
    /[a-hA-H]\d\:[a-hA-H]\d/.match(input)
  end

  def self.not_clear
    Error.message('validate_not_clear')
    false
  end

  def self.invalid_move
    Error.message('validate_false')
    false
  end

end
