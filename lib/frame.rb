class Frame

  attr_reader :roll_one
  attr_accessor :roll_two

  def initialize(roll_one, roll_two=0)
    @roll_one = roll_one
    @roll_two = roll_two
  end

  def rolls
    @rolls = [roll_one, roll_two]
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