require_relative '../../lib/pawn'

describe WhitePawn do
  let(:pawn) { WhitePawn.new }

  describe '#to_s' do
    it 'prints the right unicode symbol' do
      expect(pawn.to_s).to eql("\u2659")
    end
  end

  describe '#possible_moves' do
    it 'returns all possible moves' do
      expect(pawn.possible_moves([0, 6])).to eql([[0, 5]])
    end
  end
end
