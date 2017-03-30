require_relative '../piece'

class Queen < Piece
  def initialize(type = "Queen", color, icon)
    super(type, color, icon)
  end

  def validator(move)
    start = move[:start]
    target = move[:target]

    validated = (
      (
        (start.row - target.row).abs === (start.column_to_index - target.column_to_index).abs
      ) || (
        start.column === target.column && start.row != target.row
      ) || (
        start.row === target.row && start.column != target.column
      )
    )
  end
end
