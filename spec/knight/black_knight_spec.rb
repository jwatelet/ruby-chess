require_relative '../../lib/knight'

describe BlackKnight do
  let(:knight) { BlackKnight.new }

  describe '#to_s' do
    it 'prints the right unicode symbol' do
      expect(knight.to_s).to eql("\u265E")
    end
  end
end
