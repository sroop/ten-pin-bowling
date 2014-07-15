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
      if frame.spare? && bonus_available?
        @scorehistory << last_total + frame.total + spare_bonus(index)
      elsif frame.strike? && bonus_available?
        @scorehistory << last_total + frame.total + strike_bonus(index)
      else
        @scorehistory << frame.total + last_total
      end
    end
    @scorehistory
  end

  def spare_bonus(index)
    @scoreline.frames[index+1].roll_one
  end

  def strike_bonus(index)
    if @scoreline.frames[index+1].strike?
      @scoreline.frames[index+1].roll_one + @scoreline.frames[index+2].roll_one
    else
      @scoreline.frames[index+1].roll_one + @scoreline.frames[index+1].roll_two
    end
  end

  def last_total
    @scorehistory.last || 0 
  end

  def bonus_available?
    return true unless @scoreline.frames.last.strike? || @scoreline.frames.last.spare?
  end

end