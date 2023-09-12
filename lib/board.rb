require_relative 'string'

class Board
  def initialize(**hash)
    @table = initialize_table(hash)
  end

  def draw
    puts draw_body
  end

  def draw_body
    @table.map.with_index do |line, line_index|
      line.map.with_index do |cell, cell_index|
        draw_cell(cell, line_index + cell_index)
      end.join('')
    end.join("\n")
  end

  def draw_cell(cell, index)
    centered_cell = cell.to_s.center(3)
    if index.odd?
      centered_cell.bg_black
    else
      centered_cell.bg_gray
    end
  end

  private

  def initialize_table(hash)
    if hash[:table].nil?
      [
        ['♜', '♞', '♝', '♛', '♚', '♝', '♞', '♜'],
        ["\u265F", "\u265F", "\u265F", "\u265F", "\u265F", "\u265F", "\u265F", "\u265F"],
        [nil, nil, nil, nil, nil, nil, nil, nil],
        [nil, nil, nil, nil, nil, nil, nil, nil],
        [nil, nil, nil, nil, nil, nil, nil, nil],
        [nil, nil, nil, nil, nil, nil, nil, nil],
        ['♙', '♙', '♙', '♙', '♙', '♙', '♙', '♙'],
        ['♖', '♘', '♗', '♕', '♔', '♗', '♘', '♖']
      ]
    else
      hash[:table]
    end
  end
end
