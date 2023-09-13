require_relative '../../lib/pawn'

describe BlackPawn do
  let(:pawn) { WhitePawn.new }

  describe '#to_s' do
    it 'prints the right unicode symbol' do
      expect(pawn.to_s).to eql("\u2659")
    end
  end
end
