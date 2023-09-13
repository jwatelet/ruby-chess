require_relative '../../lib/rook'

describe WhiteRook do
  let(:rook) { WhiteRook.new }

  describe '#to_s' do
    it 'prints the right unicode symbol' do
      expect(rook.to_s).to eql("\u2656")
    end
  end
end
