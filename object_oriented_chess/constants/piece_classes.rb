require_relative '../board/square/pieces/pawn/white_pawn'
require_relative '../board/square/pieces/pawn/black_pawn'
require_relative '../board/square/pieces/rook/white_rook'
require_relative '../board/square/pieces/rook/black_rook'
require_relative '../board/square/pieces/bishop/white_bishop'
require_relative '../board/square/pieces/bishop/black_bishop'
require_relative '../board/square/pieces/knight/white_knight'
require_relative '../board/square/pieces/knight/black_knight'
require_relative '../board/square/pieces/queen/white_queen'
require_relative '../board/square/pieces/queen/black_queen'
require_relative '../board/square/pieces/king/white_king'
require_relative '../board/square/pieces/king/black_king'
require_relative '../board/square/pieces/empty'

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
