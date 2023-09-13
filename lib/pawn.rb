class Pawn
  WHITE_PAWN = '♙'.freeze
  BLACK_PAWN = "\u265F".freeze

  def initialize(**hash)
    @color = hash[:color]
  end

  def to_s
    if @color == :white
      WHITE_PAWN.to_s
    else
      BLACK_PAWN.to_s
    end
  end
end

class WhitePawn < Pawn
  def initialize
    super(color: :white)
  end
end

class BlackPawn < Pawn
  def initialize
    super(color: :black)
  end
end
