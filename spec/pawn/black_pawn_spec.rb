require_relative '../../lib/pawn'

describe BlackPawn do
  let(:pawn) { BlackPawn.new }

  describe '#to_s' do
    it 'prints the right unicode symbol' do
      expect(pawn.to_s).to eql("\u265F")
    end
  end

  describe '#possible_moves' do
    describe 'when the pawn did not move' do
      it 'returns all possible moves' do
        expect(pawn.possible_moves([0, 2])).to eql([[0, 3], [0, 4]])
      end
    end

    describe 'when the pawn did move' do
      it 'returns all possible moves' do
        expect(pawn.possible_moves([0, 3])).to eql([[0, 4]])
      end
    end

    describe 'when the pawn is next the end of the board' do
      it 'returns empty possible moves' do
        expect(pawn.possible_moves([0, 7])).to eql([])
      end
    end
  end
end
