class ScoreLine

  attr_reader :frames

  def initialize(frames)  
    @frames = []
    add(frames)
  end

  def roll_history
    @frames.map { |frame| frame.rolls}
  end

  def add(frames)
    if frames.is_a?(Array)
      frames.each { |frame| @frames << frame }
    else
      frame = frames
      @frames << frame
    end
  end

  def total
    roll_history.flatten.inject(:+)
  end

end