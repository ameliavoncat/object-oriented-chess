require 'colorize'

module Display
  def self.welcome
    puts('Welcome to Chess!'.black.on_white)
  end

  def self.setup
    puts 'setting the board ...'.black.on_white
  end

  def self.history(moves)
    white_padding(1)
    puts '                 Move History                     '.black.on_white
    white_padding(1)

    moves.each {|move| puts move[:move]}
  end

  def self.turn_announcement(turn)
    white_padding(1)
    puts '             Turn '.black.on_white + turn.number.to_s.black.on_white + ' for player: '.black.on_white + turn.player.black.on_white + '.'.black.on_white + '            '.on_white
    white_padding(1)
  end

  def self.board(state)
    color = 'white'
    row_number = 1
    state.each {|row|
      accumulator = []
      row.each {|square|
        if (color != 'black')
          color = 'black'
          accumulator.push('  '.black.on_light_black + square.piece.icon.on_light_black + '  '.black.on_light_black)
        else
          color = 'white'
          accumulator.push('  '.black.on_white + square.piece.icon.on_white + '  '.black.on_white)
        end
      }
      color = color === 'white' ? 'black' : 'white'
      puts('  '.on_white + row_number.to_s.black.on_white + '  '.on_white + accumulator.join + '     '.on_white)
      row_number += 1
    }
    column_axis_label
  end

  def self.white_padding(times)
    count = 0
    while (count < times) do
      puts '                                                  '.on_white
      count += 1
    end
  end

  def self.column_axis_label
    white_padding(1)
    puts '       A    B    C    D    E    F    G    H       '.black.on_white
    white_padding(1)
  end

end
