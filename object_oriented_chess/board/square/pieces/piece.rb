class Piece
  attr_accessor :type, :color, :icon
  def initialize(type = '', color = '', icon = ' ', first_move = true)
    @type = type
    @color = color
    @icon = icon
    @first_move = first_move
  end

  def moved
    @first_move = false if @first_move
  end

  def validate(start_square, target_square)
    puts '"validate" method must be defined by a sub class of Piece.'
    false
  end
end
