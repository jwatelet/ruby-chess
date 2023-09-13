require_relative '../lib/piece'

class Knight < Piece
  WHITE_KNIGHT = "\u2658"
  BLACK_KNIGHT = "\u265E"

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
