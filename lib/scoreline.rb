class ScoreLine

  attr_reader :frames

  def initialize(frames)
    @frames = []
    @frames << frames
  end

  def add(frame)
    @frames << frame
  end

end