require_relative '../../lib/rook'

describe BlackRook do
  let(:rook) { BlackRook.new }

  describe '#to_s' do
    it 'prints the right unicode symbol' do
      expect(rook.to_s).to eql("\u265C")
    end
  end
end
