class ScoreLine

  attr_reader :frames

  def initialize(frames)
    @frames = []
    add(frames)
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
    line_item_totals = @frames.map { |frame| frame.total }
    line_item_totals.inject(:+)
  end

end