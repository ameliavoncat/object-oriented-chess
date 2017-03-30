require_relative '../piece'

class Rook < Piece
  def initialize(type = "Rook", color, icon)
    super(type, color, icon)
  end

  def validator(move)
    start = move[:start]
    target = move[:target]

    validated = (
        start.column === target.column && start.row != target.row
      ) || (
        start.row === target.row && start.column != target.column
      )
  end
end
