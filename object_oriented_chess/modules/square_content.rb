require_relative '../constants/piece_classes'

module SquareContent
  def self.is(piece)
    @piece = klass_for(piece).new
  end

  def self.klass_for(type)
    PIECE_CLASSES[type] || DEFAULT_CLASS
  end
end
