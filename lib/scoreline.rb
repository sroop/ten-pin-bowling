class ScoreLine

  attr_reader :frames

  def initialize(frames) 
    # @totals = [0] 
    @frames = [] #array containing the frame objects
    add(frames)
  end

  def show
    @frames.map { |frame| frame.rolls} #array containing the scores in each frame
  end

  def add(frames)
    if frames.is_a?(Array)
      frames.each { |frame| @frames << frame }
    else
      frame = frames
      @frames << frame
    end
  end

  def last_frame
    frames.last
  end

  def bonuses_not_pending
    return true unless last_frame.spare?
  end

end