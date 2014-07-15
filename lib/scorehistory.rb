class ScoreHistory

  attr_reader :scoreline

  def initialize(scoreline)
    @scoreline = scoreline
  end

  def rolls
    @scoreline.history
  end
end