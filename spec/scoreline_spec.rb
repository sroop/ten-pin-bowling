require 'scoreline'
require 'frame'

describe 'ScoreLine' do
  
  let(:scoreline) { ScoreLine.new(frame1) }
  let(:frame1) { double :frame, rolls: [3, 4]}
  let(:frame2) { double :frame, rolls: [2, 1]}
  let(:frame3) { double :frame, rolls: [5, 3]}

  it 'is initialized with a list of frames' do
    expect(scoreline.frames).to eq([frame1])
  end

  it 'can add one additional frame' do
    scoreline.add(frame2)
    expect(scoreline.frames).to eq( [ frame1, frame2 ] )
  end

  it 'can add several additional frames' do
    scoreline.add( [ frame2, frame3 ] )
    expect(scoreline.frames).to eq( [ frame1, frame2, frame3 ] )
  end

  it 'can calculate the total score, given two frames' do
    frame = Frame.new(3, 4)
    frame2 = Frame.new(2, 1)
    score_line = ScoreLine.new([frame, frame2])
    expect(score_line.total).to eq(10)
  end

end