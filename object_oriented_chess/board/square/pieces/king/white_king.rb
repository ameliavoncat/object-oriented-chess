require_relative './king'

class WhiteKing < King
  def initialize(color = "White", icon = "\u265A")
    super(color, icon)
  end

  def validate_move
    'BlackPawn!'
  end
end
