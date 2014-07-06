class Frame

  attr_reader :rolls

  def initialize(rolls)
    @rolls = rolls
  end

  def incomplete?
    self.rolls.length < 2
  end

  def total
    @rolls.inject(:+)
  end

  def spare?
    self.total == 10 && !strike?
  end

  def strike?
    @rolls.first == 10
  end

end