require_relative '../constants/board_setup'
require_relative './square/square_content'

class Board
  def initialize(state = BOARD_SETUP)
    puts('initializing')
    @state = set_board(state)
    display
  end

  def set_board(state)
    state.map {|row|
      row.map {|piece|
        SquareContent.is(piece)
      }
    }
  end

  def display
    @state.each {|row|
      accumulator = []
      row.each {|square|
        accumulator.push(square.icon)
      }
      puts(accumulator.join)
    }
    puts('displaying')
    puts @state

  end

end
