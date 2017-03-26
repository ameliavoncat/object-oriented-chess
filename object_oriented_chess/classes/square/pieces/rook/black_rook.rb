require_relative './rook'

class BlackRook < Rook
  def initialize(color = "Black", icon = "\u265C".black)
    super(color, icon)
  end
end
