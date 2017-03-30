require_relative './classes/board'
require_relative './classes/turn'
require_relative './modules/move'
require_relative './modules/display'
require 'colorize'

class Game
  def initialize(turn = Turn.new, board = Board.new)
    @turn = turn
    @board = board
    start
  end

  def start
    puts '~~~ Starting Chess ~~~'.black.on_white
    display
  end

  def handle_move
    move = Move.get(@board.state)
    move[:target].piece.moved
    #TODO keep a record of the move for display and undo
    @turn.next
    display
  end

  def display
    Display.turn_announcement(@turn)
    Display.board(@board.state)
    handle_move
  end


end
