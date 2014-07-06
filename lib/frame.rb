class Frame

  attr_reader :rolls

  def initialize(rolls)
    @rolls = rolls
  end

  def incomplete?
    return true if self.rolls.length < 2 else false
  end

end