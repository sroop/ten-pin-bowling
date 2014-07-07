require 'frame'

describe 'Frame' do
  
  let(:frame) { Frame.new([3, 4]) }
  let(:frame2) { Frame.new([3]) }
  let(:frame3) { Frame.new([5, 5]) }
  let(:frame4) { Frame.new([10]) }

  it 'can contain two rolls' do
    expect(frame.rolls).to eq([3, 4])
  end

  it 'knows if incomplete' do
    expect(frame2.incomplete?).to eq(true)
  end

  it 'knows if complete' do
    expect(frame.incomplete?).to eq(false)
  end

  it 'can calculate the frame total' do
    expect(frame.total).to eq(7)
  end

  it 'knows if a spare has been scored' do
    expect(frame3.spare?).to eq(true)
  end

  it 'knows if a strike has been scored' do
    expect(frame4.strike?).to eq(true)
  end

end