require_relative '../../lib/bishop'

describe Bishop do
  let(:bishop) { Bishop.new }
  describe '#possible_moves' do
    it 'returns all possible moves' do
      expect(bishop.possible_moves([0, 0])).to eql([[1, 1], [2, 2], [3, 3], [4, 4], [5, 5], [6, 6], [7, 7]])
    end

    it 'returns all possible moves' do
      expect(bishop.possible_moves([0, 4])).to eql([[1, 3], [2, 2], [3, 1], [4, 0], [1, 5], [2, 6], [3, 7]])
    end

    it 'returns all possible moves' do
      expect(bishop.possible_moves([4,
                                    4])).to eql([[3, 3], [2, 2], [1, 1], [0, 0], [3, 5], [2, 6], [1, 7], [5, 3],
                                                 [6, 2], [7, 1], [5, 5], [6, 6], [7, 7]])
    end
  end
end
