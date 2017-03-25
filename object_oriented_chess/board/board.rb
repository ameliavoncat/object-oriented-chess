require_relative '../constants/board_setup'
require_relative './square/square_content'
require 'colorize'

class Board
  def initialize(state = BOARD_SETUP, turn = {player: 'White', number: 1})
    puts('Welcome to Chess!'.black.on_red)
    @state = set_board(state)
    @turn = turn
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
    turn_announcement
    color = 'white'
    row_number = 1
    @state.each {|row|
      accumulator = []
      row.each {|square|
        if (color != 'black')
          color = 'black'
          accumulator.push('  '.black.on_light_black + square.icon.on_light_black + '  '.black.on_light_black)
        else
          color = 'white'
          accumulator.push('  '.black.on_white + square.icon.on_white + '  '.black.on_white)
        end
      }
      color = color === 'white' ? 'black' : 'white'
      puts('  '.on_white + row_number.to_s.black.on_white + '  '.on_white + accumulator.join + '     '.on_white)
      row_number += 1
    }
    # white_padding(1)
    column_axis
    handle_move
  end

  def turn_announcement
    white_padding(1)
    puts '             Turn '.black.on_white + @turn[:number].to_s.black.on_white + ' for player: '.black.on_white + @turn[:player].black.on_white + '.'.black.on_white + '            '.on_white
    white_padding(1)
  end

  def white_padding(times)
    count = 0
    while (count < times) do
      puts '                                                  '.on_white
      count += 1
    end
  end

  def column_axis
    white_padding(1)
    puts '       A    B    C    D    E    F    G    H       '.black.on_white
    white_padding(1)
  end

  def handle_move
    move = gets.chomp.split(':')
    start_square = translate_square(move[0])
    target_square = translate_square(move[1])

    validated = validate_move(start_square, target_square)
    return handle_move if !validated
    @state[start_square[:row]][start_square[:column]].moved

    @state[target_square[:row]][target_square[:column]] =
      @state[start_square[:row]][start_square[:column]]
    @state[start_square[:row]][start_square[:column]] = SquareContent.is('Empty')

    next_turn
  end

  def next_turn
    @turn[:player] = (@turn[:player] === 'White') ?  'Black' : 'White'
    @turn[:number] += 1 if @turn[:player] === 'White'
    display
  end

  def validate_move(start_square, target_square)
    piece = @state[start_square[:row]][start_square[:column]]
    target_piece = @state[target_square[:row]][target_square[:column]]
    return own_piece if piece.color === target_piece.color
    piece.validate(start_square, target_square)
  end

  def own_piece
    puts('You cannot capture your own piece.')
    false
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

  # def mark_clear_path(start_square, target_square)
  #   if
  #   start_square[:clear_path] =
  #     true if (@state[start_square[:row]][start_square[:column]]
  #       .clear_path_validator(start_square, target_square))
  # end

  def column_to_index(letter)
    letters = ('A'..'H').to_a
    letters.find_index(letter.upcase)
  end

  def row_to_index(number)
    number.to_i - 1
  end

end
