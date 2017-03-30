require_relative '../piece'

class Knight < Piece
  def initialize(type = "Knight", color, icon)
    super(type, color, icon)
  end

  def validator(move)
    start = move[:start]
    target = move[:target]

    validated = (
      ((start.column_to_index - target.column_to_index).abs - (start.row - target.row).abs).abs === 1
    )
  end
end
