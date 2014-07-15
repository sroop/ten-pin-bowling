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

  # def total_history #array of accumulated totals
  #   @totals = [0]
  #   self.history.map { |frame| @totals << frame[0] + frame[1] + @totals.last }
  #   @totals
  # end

  # def total #current total
  #   total_history
  #   @totals.last
  # end

end