require_relative 'piece'

class Pawn < Piece
  WHITE_PAWN = '♙'.freeze
  BLACK_PAWN = "\u265F".freeze

  def initialize(**hash)
    super(hash[:color])
  end

  def to_s
    if @color == :white
      WHITE_PAWN.to_s
    else
      BLACK_PAWN.to_s
    end
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

class WhitePawn < Pawn
  POSSIBLE_MOVES = [
    [0, -1]
  ]

  def initialize
    super(color: :white)
  end

  def possible_moves(position)
    POSSIBLE_MOVES.map do |move|
      next_position = calculate_position(position, move)

      next_position if valid?(next_position)
    end.compact
  end
end

class BlackPawn < Pawn
  POSSIBLE_MOVES = [
    [0, 1]
  ]

  def initialize
    super(color: :black)
  end

  def possible_moves(position)
    POSSIBLE_MOVES.map do |move|
      next_position = calculate_position(position, move)

      next_position if valid?(next_position)
    end.compact
  end
end
