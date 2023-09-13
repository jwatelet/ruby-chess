require_relative '../../lib/king'

describe BlackKing do
  let(:king) { BlackKing.new }

  describe '#to_s' do
    it 'prints the right unicode symbol' do
      expect(king.to_s).to eql("\u265A")
    end
  end
end
