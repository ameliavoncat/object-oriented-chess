require_relative './bishop'

class WhiteBishop < Bishop
  def initialize(color = "White", icon = "\u265D".light_white)
    super(color, icon)
  end
end
