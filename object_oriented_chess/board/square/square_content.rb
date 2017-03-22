require_relative './pieces/pawn/white_pawn'
require_relative './pieces/pawn/black_pawn'
require_relative './pieces/rook/white_rook'
require_relative './pieces/rook/black_rook'
require_relative './pieces/bishop/white_bishop'
require_relative './pieces/bishop/black_bishop'
require_relative './pieces/knight/white_knight'
require_relative './pieces/knight/black_knight'
require_relative './pieces/queen/white_queen'
require_relative './pieces/queen/black_queen'
require_relative './pieces/king/white_king'
require_relative './pieces/king/black_king'
require_relative './pieces/empty'

module SquareContent
  DEFAULT_CLASS = Empty
  PIECE_CLASSES = {
    'WhitePawn' => WhitePawn,
    'BlackPawn' => BlackPawn,
    'WhiteRook' => WhiteRook,
    'BlackRook' => BlackRook,
    'WhiteKnight' => WhiteKnight,
    'BlackKnight' => BlackKnight,
    'WhiteBishop' => WhiteBishop,
    'BlackBishop' => BlackBishop,
    'WhiteQueen' => WhiteQueen,
    'BlackQueen' => BlackQueen,
    'WhiteKing' => WhiteKing,
    'BlackKing' => BlackKing
  }

  def self.is(piece)
    @piece = klass_for(piece).new
  end

  def self.klass_for(type)
    PIECE_CLASSES[type] || DEFAULT_CLASS
  end
end
