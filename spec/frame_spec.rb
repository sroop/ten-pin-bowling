require 'frame'

describe 'Frame' do
  
  let(:frame) { Frame.new([3, 4]) }
  let(:frame2) { Frame.new([3]) }

  it 'can contain two rolls' do
    expect(frame.rolls).to eq([3, 4])
  end

  it 'knows if a frame is incomplete' do
    expect(frame2.incomplete?).to eq(true)
  end

  it 'knows if a frame is complete' do
    expect(frame.incomplete?).to eq(false)
  end

end