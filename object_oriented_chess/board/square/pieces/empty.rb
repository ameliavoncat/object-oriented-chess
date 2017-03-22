require_relative './piece'

class Empty < Piece
  def validate_move
    puts 'There is no piece on the starting square.'
  end
end
