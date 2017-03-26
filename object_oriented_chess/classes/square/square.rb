require_relative 'square_content'

class Square
  attr_accessor :piece, :column, :row
  def initialize(row, column, piece = 'Empty')
    @row = row
    @column = column
    @piece = SquareContent.is(piece)
  end
end
