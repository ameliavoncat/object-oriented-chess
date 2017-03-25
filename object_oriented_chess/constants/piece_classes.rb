require_relative '../game/square/pieces/pawn/white_pawn'
require_relative '../game/square/pieces/pawn/black_pawn'
require_relative '../game/square/pieces/rook/white_rook'
require_relative '../game/square/pieces/rook/black_rook'
require_relative '../game/square/pieces/bishop/white_bishop'
require_relative '../game/square/pieces/bishop/black_bishop'
require_relative '../game/square/pieces/knight/white_knight'
require_relative '../game/square/pieces/knight/black_knight'
require_relative '../game/square/pieces/queen/white_queen'
require_relative '../game/square/pieces/queen/black_queen'
require_relative '../game/square/pieces/king/white_king'
require_relative '../game/square/pieces/king/black_king'
require_relative '../game/square/pieces/empty'

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
