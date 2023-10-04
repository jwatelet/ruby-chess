require_relative '../../lib/king'

describe King do
  let(:king) { King.new }

  describe '#possible_moves' do
    it 'returns all possible moves' do
      expect(king.possible_moves([0, 0])).to eql([[1, 0], [1, 1], [0, 1]])
    end

    it 'returns all possible moves' do
      expect(king.possible_moves([0, 2])).to eql([[0, 1], [1, 2], [1, 3], [0, 3], [1, 1]])
    end

    it 'returns all possible moves' do
      expect(king.possible_moves([3, 4])).to eql([[2, 4], [2, 3], [3, 3], [2, 5], [4, 4], [4, 5], [3, 5], [4, 3]])
    end
  end
end
