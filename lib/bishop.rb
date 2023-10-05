require_relative '../lib/piece'

class Bishop < Piece
  WHITE_BISHOP = "\u2657"
  BLACK_BISHOP = "\u265D"
  POSSIBLE_MOVES = [
    [-1, -1], [-2, -2], [-3, -3], [-4, -4], [-5, -5], [-6, -6], [-7, -7],
    [-1, 1], [-2, 2], [-3, 3], [-4, 4], [-5, 5], [-6, 6], [-7, 7],
    [1, -1], [2, -2], [3, -3], [4, -4], [5, -5], [6, -6], [7, -7],
    [1, 1], [2, 2], [3, 3], [4, 4], [5, 5], [6, 6], [7, 7]
  ]

  def initialize(**hash)
    super(hash[:color])
  end

  def to_s
    if @color == :white
      WHITE_BISHOP.to_s
    else
      BLACK_BISHOP.to_s
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

class WhiteBishop < Bishop
  def initialize
    super(color: :white)
  end
end

class BlackBishop < Bishop
  def initialize
    super(color: :black)
  end
end
