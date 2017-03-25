require_relative '../../../error'

class Piece
  attr_accessor :type, :color, :icon
  def initialize(type = '', color = '', icon = ' ', first_move = true)
    @type = type
    @color = color
    @icon = icon
    @first_move = first_move
  end

  def moved
    @first_move = false
  end

  def validate(start_square, target_square)
    Error.message('validate_undefined')
    false
  end
end
