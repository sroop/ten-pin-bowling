require 'scoreline'

describe 'ScoreLine' do
  
  let(:scoreline) { ScoreLine.new(frame1) }
  let(:frame1) { double :frame, rolls: [3, 4]}
  let(:frame2) { double :frame, rolls: [2, 1]}

  it 'is initialized with a list of frames' do
    expect(scoreline.frames).to eq([frame1])
  end

  it 'can add additional frames' do
    scoreline.add(frame2)
    expect(scoreline.frames).to eq( [ frame1, frame2 ])
  end

end