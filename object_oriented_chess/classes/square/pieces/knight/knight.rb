require_relative '../../../../modules/error'
require_relative '../piece'

class Knight < Piece
  def initialize(type = "Knight", color, icon)
    super(type, color, icon)
  end
  #
  # def validate(start_square, target_square)
  #   'No validate method yet.'
  #   true
  # end
end
