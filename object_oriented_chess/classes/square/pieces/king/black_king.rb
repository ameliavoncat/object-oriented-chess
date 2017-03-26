require_relative './king'

class BlackKing < King
  def initialize(color = "Black", icon = "\u265A".black)
    super(color, icon)
  end

  def validate_move
    'BlackPawn!'
  end
end