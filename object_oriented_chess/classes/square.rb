require_relative '../modules/square_content'

class Square
  attr_accessor :piece, :column, :row
  def initialize(row, column, piece = 'Empty')
    @row = row
    @column = column
    @piece = SquareContent.is(piece)
  end

  def column_to_index(column = @column)
    letters = ('A'..'H').to_a
    letters.find_index(column)
  end

  def row_to_index(row = @row)
    row.to_i - 1
  end
end
