require_relative '../../lib/pawn'

describe WhitePawn do
  let(:pawn) { WhitePawn.new }

  describe '#to_s' do
    it 'prints the right unicode symbol' do
      expect(pawn.to_s).to eql("\u2659")
    end
  end

  describe '#possible_moves' do
    describe 'when the pawn did not move' do
      it 'returns all possible moves' do
        expect(pawn.possible_moves([0, 6])).to eql([[0, 5], [0, 4]])
      end
    end

    describe 'when the pawn did move' do
      it 'returns all possible moves' do
        expect(pawn.possible_moves([0, 5])).to eql([[0, 4]])
      end
    end

    describe 'when the pawn is next the end of the board' do
      it 'returns empty possible moves' do
        expect(pawn.possible_moves([0, 0])).to eql([])
      end
    end
  end
end
