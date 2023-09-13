require_relative '../lib/piece'

class King < Piece
  WHITE_KING = "\u2654"
  BLACK_KING = "\u265A"

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
