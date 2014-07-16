require_relative 'two_rolls'

class Frame

  include TwoRolls

  def initialize(roll_one=nil, roll_two=nil)
    super
    @roll_two = 0 if strike?
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