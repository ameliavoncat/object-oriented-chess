require_relative './error'
require_relative './validate'
require_relative '../classes/square/square_content'

module Move
  def self.get(board_state)
    puts 'getting move'.green
    move = gets.chomp
    return get(board_state) if !Validate.input(move)

    move = move.split(':')
    start_square = find_square(move[0], board_state)
    target_square = find_square(move[1], board_state)

    move = {
      start: start_square,
      target: target_square
    }
    return get(board_state) if !Validate.move(move, board_state)
    execute(move, board_state)
    move
  end

  def self.find_square( square_id, state )
    keys = square_id.split('')
    column = keys[0]
    row = keys[1]
    pieces = []
    state.each {|array|
      array.each{|square|
        pieces.push(square) if square.row === row.to_i && square.column === column.upcase
      }
    }
    pieces[0]
  end

  def self.execute(move, state)
    accumulator = []
    state.each {|array|
      row = []
      array.each{|square|
        square.piece = move[:start].piece if square === move[:target]
        row.push(square)
      }
      accumulator.push(row)
    }
    empty_start_square(move, accumulator)
  end

  def self.empty_start_square(move, state)
    accumulator = []
    state.each {|array|
      row = []
      array.each{|square|
        square.piece = SquareContent.is('Empty') if square === move[:start]
        row.push(square)
      }
      accumulator.push(row)
    }
    accumulator
  end
end
