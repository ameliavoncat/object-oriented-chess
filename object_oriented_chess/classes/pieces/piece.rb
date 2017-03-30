require_relative '../../modules/error'

class Piece
  attr_accessor :type, :color, :icon
  def initialize(type = 'Empty', color = '', icon = ' ', first_move = true)
    @type = type
    @color = color
    @icon = icon
    @first_move = first_move
  end

  def moved
    @first_move = false
  end

  def validator(move)
    Error.message('validate_undefined')
    false
  end
end
