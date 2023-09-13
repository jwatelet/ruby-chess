require_relative '../../lib/queen'

describe WhiteQueen do
  let(:queen) { WhiteQueen.new }

  describe '#to_s' do
    it 'prints the right unicode symbol' do
      expect(queen.to_s).to eql("\u2655")
    end
  end
end
