class ScoreHistory

  attr_reader :scoreline

  def initialize(scoreline)
    @scoreline = scoreline
    @scorehistory = []
  end

  def rolls
    @scoreline.show
  end

  def total
    show.last
  end

  def show
    rolls.map { |frame| @scorehistory << frame[0] + frame[1] + ( @scorehistory.last || 0 ) }
    @scorehistory
  end
  
end