require_relative '../lib/piece'

class Knight < Piece
  WHITE_KNIGHT = "\u2658"
  BLACK_KNIGHT = "\u265E"
  POSSIBLE_MOVES = [
    [-2, 1], [-2, -1], [2, -1], [2, 1],
    [1, 2], [1, -1], [-1, 2], [-1, -2]
  ].freeze

  def initialize(**hash)
    super(hash[:color])
  end

  def to_s
    if @color == :white
      WHITE_KNIGHT.to_s
    else
      BLACK_KNIGHT.to_s
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

class WhiteKnight < Knight
  def initialize
    super(color: :white)
  end
end

class BlackKnight < Knight
  def initialize
    super(color: :black)
  end
end
