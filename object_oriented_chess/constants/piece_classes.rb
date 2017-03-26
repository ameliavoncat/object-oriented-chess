base_path = '../classes/square/pieces/'
require_relative base_path + 'pawn/white_pawn'
require_relative base_path + 'pawn/black_pawn'
require_relative base_path + 'rook/white_rook'
require_relative base_path + 'rook/black_rook'
require_relative base_path + 'bishop/white_bishop'
require_relative base_path + 'bishop/black_bishop'
require_relative base_path + 'knight/white_knight'
require_relative base_path + 'knight/black_knight'
require_relative base_path + 'queen/white_queen'
require_relative base_path + 'queen/black_queen'
require_relative base_path + 'king/white_king'
require_relative base_path + 'king/black_king'
require_relative base_path + 'empty'

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
