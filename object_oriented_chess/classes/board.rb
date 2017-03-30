require_relative '../constants/board_setup'
require_relative './square'
require_relative '../modules/error'
require 'colorize'

class Board
  attr_accessor :state
  def initialize(state = BOARD_SETUP, turn = {player: 'White', number: 1})
    puts('Welcome to Chess!'.white.on_red)
    @state = set_board(state)
  end

  def set_board(state)
    puts 'setting the board ...'.white.on_red
    row_index = 0
    column_index = 0
    accumulator = []
    while row_index < state.length
      row = []
      while column_index < state.length
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

  def index_to_letter(index)
    letters = ('A'..'H').to_a
    letters[index]
  end

end
