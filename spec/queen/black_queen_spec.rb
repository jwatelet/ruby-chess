require_relative '../../lib/queen'

describe BlackPawn do
  let(:queen) { BlackQueen.new }

  describe '#to_s' do
    it 'prints the right unicode symbol' do
      expect(queen.to_s).to eql("\u265B")
    end
  end
end
