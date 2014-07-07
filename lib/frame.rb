class Frame

  attr_reader :roll_one
  attr_accessor :roll_two

  def initialize(roll_one, roll_two=nil)
    @roll_one = roll_one
    if strike?
      @roll_two = 0
    else
      @roll_two = roll_two
    end
  end

  def rolls
    @rolls = [roll_one, roll_two]
  end

  def incomplete?
    self.rolls.include?(nil)
  end

  def total
    if !incomplete?
      @rolls.inject(:+)
    end
  end

  def spare?
    self.total == 10 && !strike?
  end

  def strike?
    roll_one == 10
  end

end