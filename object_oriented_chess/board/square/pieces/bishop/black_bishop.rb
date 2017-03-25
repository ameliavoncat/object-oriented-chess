require_relative './bishop'

class BlackBishop < Bishop
  def initialize(color = "Black", icon = "\u265D".black)
    super(color, icon)
  end
end
