require_relative '../../../error'
require_relative './piece'

class Empty < Piece
  def validate(start_square, target_square)
    Error.message('validate_empty')
    false
  end
end
