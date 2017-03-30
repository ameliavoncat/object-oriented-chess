module ClearPath
  def self.diagonal(move, state)
    puts('clearing diagonal')
    start = move[:start]
    target = move[:target]
    col_index = start.column_to_index
    target_col_index = target.column_to_index

    row = start.row_to_index
    target_row = target.row_to_index

    if row < target_row && col_index < target_col_index
      col_index += 1
      row += 1
      while row + 1 < target_row
        return not_clear if state[row][col_index].piece.type != 'Empty'
        col_index += 1
        row += 1
      end
    elsif row < target_row && col_index > target_col_index
      col_index -= 1
      row += 1
      while row + 1 < target_row
        return not_clear if state[row][col_index].piece.type != 'Empty'
        col_index -= 1
        row += 1
      end
    elsif row - 1 > target_row && col_index < target_col_index
      col_index += 1
      row -= 1
      while row > target_row
        return not_clear if state[row][col_index].piece.type != 'Empty'
        col_index += 1
        row -= 1
      end
    elsif row > target_row && col_index > target_col_index
      row -= 1
      col_index -= 1
      while row > target_row
        return not_clear if state[row][col_index].piece.type != 'Empty'
        col_index -= 1
        row -= 1
      end
    end
    true
  end

  def self.horizontal(move, state)
    puts ('clearing horizontal')
    start = move[:start]
    target = move[:target]
    col_index = start.column_to_index
    target_col_index = target.column_to_index

    row = start.row_to_index
    target_row = target.row_to_index

    if col_index < target_col_index
      while col_index < target_col_index
        col_index += 1
        return not_clear if state[row][col_index].piece.type != 'Empty'
        col_index += 1
      end
    elsif col_index > target_col_index
      col_index -= 1
      while col_index > target_col_index
        return not_clear if state[row][col_index].piece.type != 'Empty'
        col_index -= 1
      end
    end
    true
  end

  def self.vertical(move, state)
    puts ('clearing vertical')
    start = move[:start]
    target = move[:target]
    col_index = start.column_to_index
    target_col_index = target.column_to_index

    row = start.row_to_index
    target_row = target.row_to_index

    if row < target_row
      row += 1
      while row < target_row
        return not_clear if state[row][col_index].piece.type != 'Empty'
        row += 1
      end
    elsif row > target_row
      row -= 1
      while row > target_row
        puts state[6][col_index].piece
        return not_clear if state[row][col_index].piece.type != 'Empty'
        row -= 1
      end
    end
    true
  end

  def self.knight(move, state)
    puts('clearing knight')
    true
  end


  def self.not_clear
    Error.message('validate_not_clear')
    false
  end
end
