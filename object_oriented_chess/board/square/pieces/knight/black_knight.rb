require_relative './knight'

class BlackKnight < Knight
  def initialize(color = "Black", icon = "\u265E".black)
    super(color, icon)
  end
end
