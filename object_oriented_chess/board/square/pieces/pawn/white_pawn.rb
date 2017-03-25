require_relative './pawn'

class WhitePawn < Pawn
  def initialize(color = "White", icon = "\u265F".light_white)
    super(color, icon)
  end
end
