require_relative '../white_pawn'
require_relative '../black_pawn'

RSpec.describe 'Pawn'.light_white do
  describe '#type'.light_red do
    it 'returns the type of the piece'.white do
      expect(WhitePawn.new.type).to eq('Pawn')
      expect(BlackPawn.new.type).to eq('Pawn')
    end
  end
  describe '#color'.light_red do
    it 'returns the color of the pawn'.white do
      expect(WhitePawn.new.color).to eq('White')
      expect(BlackPawn.new.color).to eq('Black')
    end
  end
end
