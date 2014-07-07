require 'frame'

describe 'Frame' do
  
  let(:frame) { Frame.new(3) }

  it 'can contain two rolls' do
    expect(frame.roll_one).to eq(3)
    frame.roll_two = 4
    expect(frame.roll_two).to eq(4)
    expect(frame.rolls).to eq([3, 4])
  end

  it 'knows if incomplete' do
    expect(frame.incomplete?).to eq(true)
  end

  it 'knows if complete' do
    frame.roll_two = 4
    expect(frame.incomplete?).to eq(false)
  end

  it 'can calculate the frame total' do
    frame.roll_two = 4
    expect(frame.total).to eq(7)
  end

  it 'knows if a spare has been scored' do
    frame.roll_two = 7
    expect(frame.spare?).to eq(true)
  end

  it 'knows if a strike has been scored' do
    frame2 = Frame.new(10)
    expect(frame2.strike?).to eq(true)
    expect(frame2.total).to eq(10)
  end

end