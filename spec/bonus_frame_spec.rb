require 'bonus_frame'
require 'frame'

describe 'BonusFrame' do

  let(:frame) { Frame.new(2, 3) }
  let(:bonus_frame) { BonusFrame.new(frame) }

  it 'is initialized with a single frame' do
    expect(bonus_frame.frame).to eq(frame)
    expect(bonus_frame.show).to eq([2, 3])
  end

end