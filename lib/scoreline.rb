class ScoreLine

  attr_reader :frames

  def initialize(*frames)
    @frames = [] #array containing the frame objects
    add(*frames)
  end

  def show
    @frames.map { |frame| frame.rolls} #array containing the scores in each frame
  end

  def add(*frames)
    frames.each do |frame| 
      add_to_scoreline_do_not_exceed_ten_frames(frame)
    end
  end

  def last_frame
    frames.last
  end

  def add_to_scoreline_do_not_exceed_ten_frames(frame)
    if @frames.length < 10 || @frames.nil?
      @frames << frame
    else 
      raise "Ten frames only!"
    end
  end

end