require_relative '../../lib/king'

describe WhiteKing do
  let(:king) { WhiteKing.new }

  describe '#to_s' do
    it 'prints the right unicode symbol' do
      expect(king.to_s).to eql("\u2654")
    end
  end
end
