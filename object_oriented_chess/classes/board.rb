require_relative '../constants/board_setup'
require_relative './square'
require_relative '../modules/error'
require_relative '../modules/display'
require 'colorize'

class Board
  attr_accessor :state
  def initialize(state = BOARD_SETUP)
    @state = set(state)
  end

  def set(state)
    Display.setup
    row_index = 0
    column_index = 0
    accumulator = []
    while row_index < state.length
      row = []
      while column_index < state[row_index].length
        piece = state[row_index][column_index]
        row.push(Square.new(row_index + 1, index_to_letter(column_index), piece))
        column_index += 1
      end
      accumulator.push(row)
      column_index = 0
      row_index += 1
    end
    accumulator
  end

  def reset
    @state = set(BOARD_SETUP)
  end

  def index_to_letter(index)
    letters = ('A'..'H').to_a
    letters[index]
  end

end
