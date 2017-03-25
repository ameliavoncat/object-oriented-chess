require_relative './knight'

class WhiteKnight < Knight
  def initialize(color = "White", icon = "\u265E".light_white)
    super(color, icon)
  end
end
