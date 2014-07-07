require 'scoreline'
require 'frame'

describe 'ScoreLine' do
  
  let(:scoreline) { ScoreLine.new(frame1) }
  let(:frame1) { Frame.new(3, 4) }
  let(:frame2) { Frame.new(2, 1) }
  let(:frame3) { Frame.new(5, 3) }
  let(:frame4) { Frame.new(6, 2) }
  let(:frame5) { Frame.new(2, 0) } 

  it 'is initialized with a list of frames' do
    expect(scoreline.roll_history).to eq([ [3, 4] ])
  end

  it 'can add one additional frame' do
    scoreline.add(frame2)
    expect(scoreline.roll_history).to eq( [ [3, 4], [2, 1] ] )
  end

  it 'can add several additional frames' do
    scoreline.add( [ frame2, frame3 ] )
    expect(scoreline.roll_history).to eq( [ [3, 4], [2, 1], [5, 3] ] )
  end

  it 'can calculate the total score, given two frames' do
    scoreline = ScoreLine.new([frame1, frame2])
    expect(scoreline.total).to eq(10)
  end

  it 'can calculate the total score, given 5 frames' do
    scoreline = ScoreLine.new([frame1, frame2, frame3, frame4, frame5])
    expect(scoreline.total).to eq(28)
  end

end