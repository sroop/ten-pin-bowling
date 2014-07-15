class ScoreHistory

  attr_reader :scoreline

  def initialize(scoreline)
    @scoreline = scoreline
  end

  def rolls
    @scoreline.history
  end

  def total
    rolls.flatten.inject(:+)
  end
end