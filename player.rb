class Player

  attr_accessor :id, :life

  def initialize(id)
    @id = id
    @life = 3
  end

  def reduceLife
    @life -= 1;
  end

end
