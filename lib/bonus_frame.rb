class BonusFrame

  attr_reader :frame

  def initialize(frame)
    @frame = frame
  end

  def show
    @frame.rolls
  end

end