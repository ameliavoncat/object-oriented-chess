require_relative './classes/board'
require_relative './classes/turn'
require_relative './modules/move'
require_relative './modules/display'
require 'colorize'

class Game
  def initialize(turn = Turn.new, board = Board.new)
    Display.welcome
    @turn = turn
    @history = []
    @board = board
    start
  end

  def start
    show_board
  end

  def handle_move
    move = Move.get(@board.state)
    move[:target].piece.moved
    save_move(move)
    #TODO keep a record of the move for display and undo
    @turn.next
    show_board
  end

  def save_move(move)
    @history.push({turn: @turn.number, move: (move[:target].piece.icon.on_white + ' '.on_white + ' ' + move[:start].column.to_s.light_red + move[:start].row.to_s.light_red + ' -> '.light_red + move[:target].column.to_s.light_red + move[:target].row.to_s.light_red)})
    Display.history(@history)
  end

  def show_board
    Display.turn_announcement(@turn)
    Display.board(@board.state)
    handle_move
  end

end
