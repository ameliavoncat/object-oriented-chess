require_relative './bishop'

class BlackBishop < Bishop
  def initialize(color = "Black", icon = "\u2657")
    super(color, icon)
  end

  def validate_move
    'BlackPawn!'
  end
end
