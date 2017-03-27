require_relative '../../../../modules/error'
require_relative '../piece'

class Bishop < Piece
  def initialize(type = "Pawn", color, icon)
    super(type, color, icon)
  end

  def validator(move)
    start = move[:start]
    target = move[:target]
    puts start.row - target.row
    puts start.column_to_index - target.column_to_index

    validated = (
      (start.row - target.row).abs === (start.column_to_index - target.column_to_index).abs
    )
  end
end
