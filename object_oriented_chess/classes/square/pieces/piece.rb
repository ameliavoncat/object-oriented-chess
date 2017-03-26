require_relative '../../../modules/error'

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

  def validate(move)
    Error.message('validate_undefined')
    false
  end

  def column_to_index(column)
    letters = ('A'..'H').to_a
    letters.find_index(column)
  end
end
