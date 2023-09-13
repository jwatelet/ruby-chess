require_relative '../lib/board'
require_relative '../lib/string'

describe Board do
  let(:table) do
    [
      %w[A B C],
      %w[E F G]
    ]
  end
  let(:board) { Board.new(table: table) }
  describe '#draw' do
    it "draw a board with alternative white and black cells" do
      result = "\e[47m A \e[0m\e[40m B \e[0m\e[47m C \e[0m\n\e[40m E \e[0m\e[47m F \e[0m\e[40m G \e[0m\n"

      expect { board.draw }.to output(result).to_stdout
    end
  end

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
