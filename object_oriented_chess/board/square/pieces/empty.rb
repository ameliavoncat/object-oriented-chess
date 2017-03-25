require_relative './piece'

class Empty < Piece
  def validate(start_square, target_square)
    puts 'There is no piece on the starting square.'
    false
  end
end
