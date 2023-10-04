require_relative '../../lib/knight'

describe Knight do
  let(:knight) { Knight.new }
  describe '#possible_moves' do
    it 'returns all possible moves' do
      expect(knight.possible_moves([6, 0])).to eql([[4, 1], [7, 2], [5, 2]])
    end

    it 'returns all possible moves' do
      expect(knight.possible_moves([0, 0])).to eql([[2, 1], [1, 2]])
    end

    it 'returns all possible moves' do
      expect(knight.possible_moves([4, 3])).to eql([[2, 4], [2, 2], [6, 2], [6, 4], [5, 5], [5, 2], [3, 5], [3, 1]])
    end
  end
end
