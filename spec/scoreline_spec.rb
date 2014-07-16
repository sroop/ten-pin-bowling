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
    expect(scoreline.show).to eq([ [3, 4] ])
  end

  it 'can add one additional frame' do
    scoreline.add(frame2)
    expect(scoreline.show).to eq( [ [3, 4], [2, 1] ] )
  end

  it 'can add several additional frames' do
    scoreline.add( frame2, frame3 )
    expect(scoreline.show).to eq( [ [3, 4], [2, 1], [5, 3] ] )
  end

  it 'can only hold 10 frames' do
    frame6 = Frame.new(2, 3)
    frame7 = Frame.new(2, 3)
    frame8 = Frame.new(2, 3)
    frame9 = Frame.new(2, 3)
    frame10 = Frame.new(2, 3)
    frame11 = Frame.new(2, 3)
    scoreline.add(frame2, frame3, frame4, frame5, frame6, frame7, frame8, frame9, frame10)
    expect{scoreline.add(frame11)}.to raise_error('Ten frames only!')
    expect(scoreline.show).to eq([ [3,4],[2,1],[5,3],[6,2],[2,0],[2,3],[2,3],[2,3],[2,3], [2,3] ])
    # expect{scoreline.add( frame2, frame3, frame4, frame5, frame6, frame7, frame8, frame9, frame10, frame11 )}.to raise_error('Ten frames only!')
  end

end