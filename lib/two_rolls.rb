module TwoRolls

  attr_accessor :roll_one
  attr_accessor :roll_two

  def initialize(roll_one=nil, roll_two=nil)
    @roll_one = roll_one
    @roll_two = roll_two
  end

  def rolls
    @rolls = [roll_one, roll_two]
  end

  def incomplete?
    self.rolls.include?(nil)
  end

end