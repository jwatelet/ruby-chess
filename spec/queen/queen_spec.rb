require_relative '../../lib/queen'

describe Queen do
  let(:queen) { Queen.new }
  describe '#possible_moves' do
    it 'returns all possible moves' do
      expect(queen.possible_moves([0,
                                   0])).to eql([[1, 1], [2, 2], [3, 3], [4, 4], [5, 5], [6, 6], [7, 7], [0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [0, 6],
                                                [0, 7], [1, 0], [2, 0], [3, 0], [4, 0], [5, 0], [6, 0], [7, 0]])
    end

    it 'returns all possible moves' do
      expect(queen.possible_moves([0,
                                   4])).to eql([[1, 3], [2, 2], [3, 1], [4, 0], [1, 5], [2, 6], [3, 7], [0, 5], [0, 6], [0, 7], [0, 3], [0, 2], [0, 1],
                                                [0, 0], [1, 4], [2, 4], [3, 4], [4, 4], [5, 4], [6, 4], [7, 4]])
    end

    it 'returns all possible moves' do
      expect(queen.possible_moves([4,
                                   4])).to eql([[3, 3], [2, 2], [1, 1], [0, 0], [3, 5], [2, 6], [1, 7], [5, 3], [6, 2],
                                                [7, 1], [5, 5], [6, 6], [7, 7], [4, 5], [4, 6], [4, 7], [4, 3], [4, 2], [4, 1], [4, 0], [5, 4], [6, 4], [7, 4], [3, 4], [2, 4], [1, 4], [0, 4]])
    end
  end
end
