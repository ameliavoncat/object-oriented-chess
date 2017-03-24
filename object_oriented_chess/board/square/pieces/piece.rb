class Piece
  attr_accessor :type, :color, :icon
  def initialize(type = '', color = '', icon = ' ')
    @type = type
    @color = color
    @icon = icon
  end

  def validate_move
    puts 'Method validate_move must be defined by a sub class'
  end
end
