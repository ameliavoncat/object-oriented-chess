require_relative './error'

module Validate
  def self.move(move)
    puts 'Valdiate.move'
    move[:start].piece.validate(move)
  end

  def self.input(input)
    puts 'Validate.input'
    /[a-hA-H]\d\:[a-hA-H]\d/.match(input)
  end

  def self.invalid_move(board_state)
    Error.message('validate_false')
  end

end
