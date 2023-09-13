require_relative '../../lib/bishop'

describe WhiteBishop do
  let(:bishop) { WhiteBishop.new }

  describe '#to_s' do
    it 'prints the right unicode symbol' do
      expect(bishop.to_s).to eql("\u2657")
    end
  end
end
