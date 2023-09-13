require_relative 'string'
require_relative 'pawn'

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
        black_pawn_line,
        blank_line,
        blank_line,
        blank_line,
        blank_line,
        white_pawn_line,
        ['♖', '♘', '♗', '♕', '♔', '♗', '♘', '♖']
      ]
    else
      hash[:table]
    end
  end

  def white_pawn_line
    [
      WhitePawn.new,
      WhitePawn.new,
      WhitePawn.new,
      WhitePawn.new,
      WhitePawn.new,
      WhitePawn.new,
      WhitePawn.new,
      WhitePawn.new
    ]
  end

  def black_pawn_line
    [
      BlackPawn.new,
      BlackPawn.new,
      BlackPawn.new,
      BlackPawn.new,
      BlackPawn.new,
      BlackPawn.new,
      BlackPawn.new,
      BlackPawn.new
    ]
  end

  def blank_line
    [
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil,
      nil
    ]
  end
end
