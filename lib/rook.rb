require_relative '../lib/piece'

class Rook < Piece
  WHITE_ROOK = "\u2656"
  BLACK_ROOK = "\u265C"
  POSSIBLE_MOVES = [
    [0, 1], [0, 2], [0, 3], [0, 4], [0, 5], [0, 6], [0, 7],
    [0, -1], [0, -2], [0, -3], [0, -4], [0, -5], [0, -6], [0, -7],
    [1, 0], [2, 0], [3, 0], [4, 0], [5, 0], [6, 0], [7, 0],
    [-1, 0], [-2, 0], [-3, 0], [-4, 0], [-5, 0], [-6, 0], [-7, 0]
  ]

  def initialize(**hash)
    super(hash[:color])
  end

  def to_s
    if @color == :white
      WHITE_ROOK.to_s
    else
      BLACK_ROOK.to_s
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

class WhiteRook < Rook
  def initialize
    super(color: :white)
  end
end

class BlackRook < Rook
  def initialize
    super(color: :black)
  end
end
