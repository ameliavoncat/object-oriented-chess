require_relative './knight'

class BlackKnight < Knight
  def initialize(color = "Black", icon = "\u2654")
    super(color, icon)
  end

  def validate_move
    'BlackPawn!'
  end
end
