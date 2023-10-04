require_relative '../lib/piece'

class King < Piece
  WHITE_KING = "\u2654"
  BLACK_KING = "\u265A"
  POSSIBLE_MOVES = [
    [-1, 0], [-1, -1], [0, -1], [-1, 1],
    [1, 0], [1, 1], [0, 1], [1, -1]
  ]

  def initialize(**hash)
    super(hash[:color])
  end

  def to_s
    if @color == :white
      WHITE_KING.to_s
    else
      BLACK_KING.to_s
    end
  end

  def possible_moves(position)
    POSSIBLE_MOVES.map do |move|
      next_position = calculate_position(position, move)

      next_position if valid?(next_position)
    end.compact
  end

  private

  def valid?(position)
    x, y = position

    x >= 0 && x <= 7 && y >= 0 && y <= 7
  end

  def calculate_position(position, move)
    pos_x, pos_y = position
    move_x, move_y = move

    [pos_x + move_x, pos_y + move_y]
  end
end

class WhiteKing < King
  def initialize
    super(color: :white)
  end
end

class BlackKing < King
  def initialize
    super(color: :black)
  end
end
