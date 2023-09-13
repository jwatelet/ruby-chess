require_relative '../lib/piece'

class Bishop < Piece
  WHITE_BISHOP = "\u2657"
  BLACK_BISHOP = "\u265D"

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
