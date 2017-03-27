module Error
  DEFAULT_ERROR_TYPE = 'Default error.'
  ERROR_TYPES = {
    'own_piece':          'You cannot capture your own piece.',
    'validate_undefined': '"validate" method must be defined by a sub class of Piece.',
    'validate_empty':     'There is no piece on the starting square.',
    'validate_false':     'That is not a valid move.',
    'validate_not_clear':   'Cannot move through other pieces.'
  }
  def self.message(type = DEFAULT_ERROR_TYPE)
    message = ERROR_TYPES[type.to_sym] || DEFAULT_ERROR_TYPE
    puts(message.red)
  end
end
