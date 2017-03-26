require_relative '../../../modules/error'
require_relative './piece'

class Empty < Piece
  def validate(move)
    Error.message('validate_empty')
    false
  end
end
