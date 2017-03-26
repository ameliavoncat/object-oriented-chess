require_relative '../piece'
require_relative '../empty'

class Pawn < Piece
  def initialize(type = "Pawn", color, icon)
    super(type, color, icon)
  end

  def validate(move)
    puts('inside validate')
    return validate_capture(move[:start], move[:target]) if !move[:target].piece.instance_of? Empty
    validate_move(move[:start], move[:target])
  end
end
