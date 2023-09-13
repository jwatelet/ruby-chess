require_relative '../lib/piece'

class Rook < Piece
  WHITE_ROOK = "\u2656"
  BLACK_ROOK = "\u265C"

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
