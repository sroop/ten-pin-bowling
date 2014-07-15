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
    @scorehistory = []
    @scoreline.frames.map.with_index do |frame, index|
      if frame.spare? && @scoreline.bonuses_not_pending
        @scorehistory << last_total + frame.total + @scoreline.show[index +1][0]
      elsif frame.strike? && @scoreline.bonuses_not_pending
        @scorehistory << last_total + frame.total + @scoreline.show[index +1][0] + @scoreline.show[index +1][1]
      else
        @scorehistory << frame.total + last_total
      end
    end
    @scorehistory
  end

  def last_total
    @scorehistory.last || 0 
  end

end