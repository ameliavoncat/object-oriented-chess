require 'colorize'

require_relative '../square_content'
require_relative '../../classes/square/pieces/queen/white_queen'
require_relative '../../classes/square/pieces/empty'

RSpec.describe 'SquareContent'.light_white do
  describe "#is".light_red do
    context "when the string passed is a valid piece class".white do
      it "returns an instance of the named class".light_white do
        piece = SquareContent.is('WhiteQueen')
        expect(piece.instance_of? WhiteQueen).to eq(true)
      end
    end
    context "when the string passed isn't a valid piece class".white do
      it "returns an instance of the Empty class".light_white do
        piece = SquareContent.is('RedChecker')
        expect(piece.instance_of? Empty).to eq(true)
      end
    end
  end
end
