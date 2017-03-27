require_relative '../../../../modules/error'
require_relative '../piece'

class King < Piece
  def initialize(type = "King", color, icon)
    super(type, color, icon)
  end

  def validator(move)
    start = move[:start]
    target = move[:target]

    validated = (
      ((start.row - target.row).abs === 1 &&
        (start.column_to_index - target.column_to_index).abs < 2) ||
      ((start.column_to_index - target.column_to_index).abs === 1 &&
        (start.row - target.row).abs < 2)
    )
  end
end
