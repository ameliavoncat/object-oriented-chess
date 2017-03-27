require_relative '../../../modules/error'
require_relative './piece'

class Empty < Piece
  def validator(move)
    Error.message('validate_empty')
    false
  end
end
