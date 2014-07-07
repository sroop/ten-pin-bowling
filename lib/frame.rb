class Frame

  attr_accessor :roll_one
  attr_accessor :roll_two

  def initialize(roll_one=nil, roll_two=nil)
    @roll_one = roll_one
    @roll_two = roll_two
    @roll_two = 0 if strike?
  end

  def rolls
    @rolls = [roll_one, roll_two]
  end

  def incomplete?
    self.rolls.include?(nil)
  end

  def total
    @rolls.inject(:+) if !incomplete?
  end

  def spare?
    self.total == 10 && !strike?
  end

  def strike?
    roll_one == 10
  end

end