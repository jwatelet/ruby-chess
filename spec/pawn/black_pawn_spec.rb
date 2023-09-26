require_relative '../../lib/pawn'

describe BlackPawn do
  let(:pawn) { BlackPawn.new }

  describe '#to_s' do
    it 'prints the right unicode symbol' do
      expect(pawn.to_s).to eql("\u265F")
    end
  end

  describe '#possible_moves' do
    it 'returns all possible moves' do
      expect(pawn.possible_moves([0, 2])).to eql([[0, 3]])
    end
  end
end
