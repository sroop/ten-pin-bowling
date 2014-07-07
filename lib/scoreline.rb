class ScoreLine

  attr_reader :frames

  def initialize(frames)
    @frames = []
    @frames << frames
  end

  def add(frames)
    if frames.is_a?(Array)
      frames.each { |frame| @frames << frame }
    else
      frame = frames
      @frames << frame
    end
  end

end