require_relative '../../lib/knight'

describe WhiteKnight do
  let(:knight) { WhiteKnight.new }

  describe '#to_s' do
    it 'prints the right unicode symbol' do
      expect(knight.to_s).to eql("\u2658")
    end
  end
end
