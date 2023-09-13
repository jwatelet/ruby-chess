require_relative '../lib/piece'

class Queen < Piece
  WHITE_QUEEN = "\u2655"
  BLACK_QUEEN = "\u265B"

  def initialize(**hash)
    super(hash[:color])
  end

  def to_s
    if @color == :white
      WHITE_QUEEN.to_s
    else
      BLACK_QUEEN.to_s
    end
  end
end

class WhiteQueen < Queen
  def initialize
    super(color: :white)
  end
end

class BlackQueen < Queen
  def initialize
    super(color: :black)
  end
end
