require_relative '../../lib/rook'

describe Rook do
  let(:rook) { Rook.new }
  describe '#possible_moves' do
    it 'returns all possible moves' do
      expect(rook.possible_moves([0,
                                  0])).to eql([[0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [0, 6], [0, 7], [1, 0], [2, 0], [3, 0], [4, 0], [5, 0], [6, 0],
                                               [7, 0]])
    end

    it 'returns all possible moves' do
      expect(rook.possible_moves([0,
                                  4])).to eql([[0, 5], [0, 6], [0, 7], [0, 3], [0, 2], [0, 1], [0, 0], [1, 4], [2, 4], [3, 4], [4, 4], [5, 4], [6, 4],
                                               [7, 4]])
    end

    it 'returns all possible moves' do
      expect(rook.possible_moves([4,
                                  4])).to eql([[4, 5], [4, 6], [4, 7], [4, 3], [4, 2], [4, 1], [4, 0], [5, 4], [6, 4], [7, 4], [3, 4], [2, 4], [1, 4],
                                               [0, 4]])
    end
  end
end
