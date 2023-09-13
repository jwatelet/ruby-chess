require_relative '../../lib/bishop'

describe BlackBishop do
  let(:bishop) { BlackBishop.new }

  describe '#to_s' do
    it 'prints the right unicode symbol' do
      expect(bishop.to_s).to eql("\u265D")
    end
  end
end
