require_relative '../lib/board'

describe Board do
  let(:board) { Board.new }

  describe '#draw_cell' do
    it 'draw a white cell with the right symbol' do
      result = "\e[47m O \e[0m"
      expect(board.draw_cell('O', 0)).to eql(result)
    end

    it 'draw a black cell with the right symbol' do
      result = "\e[40m O \e[0m"
      expect(board.draw_cell('O', 1)).to eql(result)
    end
  end
end
