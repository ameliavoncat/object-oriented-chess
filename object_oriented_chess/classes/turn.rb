class Turn
  attr_accessor :number, :player
  def initialize(player = 'White', number = 1, half = 1)
    @number = number
    @half = half
    @player = player
  end

  def next
    if @half === 2
      @half = 1
      @number += 1
    else
      @half += 1
    end
    next_player
  end

  def next_player
    @player = @player === 'White' ? 'Black' : 'White'
  end
end
