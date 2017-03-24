require_relative '../constants/board_setup'
require_relative './square/square_content'
require 'colorize'

class Board
  def initialize(state = BOARD_SETUP)
    puts('Welcome to Chess!'.white)
    @state = set_board(state)
    display
  end

  def set_board(state)
    puts 'setting the board ...'.white
    row_id = 1
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
        accumulator.push('[ '.yellow + square.icon.white + ' ]'.yellow)
      }
      puts(accumulator.join)
    }
    handle_move
  end

  def handle_move
    move = gets.chomp.split(':')
    start_square = translate_square(move[0])
    target_square = translate_square(move[1])

    validated = validate_move(start_square, target_square)
    return if !validated
    @state[target_square[:row]][target_square[:column]] =
      @state[start_square[:row]][start_square[:column]]
    @state[start_square[:row]][start_square[:column]] = SquareContent.is('Empty')
    display
  end

  def get_move

  end

  def validate_move(start_square, target_square)
    @state[start_square[:row]][start_square[:column]].validate(start_square, target_square)
  end

  def translate_square(square)
    square_indices = square.split('')
    result = {
      :row => row_to_index(square_indices[1]),
      :column => column_to_index(square_indices[0])
    }
    mark_occupied(result)
    result
  end

  def mark_occupied(square)
    square[:is_occupied] =
      true if !@state[square[:row]][square[:column]].instance_of? Empty
  end

  def column_to_index(letter)
    letters = ('A'..'H').to_a
    letters.find_index(letter.upcase)
  end

  def row_to_index(number)
    number.to_i - 1
  end

end
