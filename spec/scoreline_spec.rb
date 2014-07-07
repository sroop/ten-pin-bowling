require 'scoreline'

describe 'ScoreLine' do
  
  let(:scoreline) { ScoreLine.new([frame1, frame2]) }
  let(:frame1) { double :frame, rolls: [3, 4]}
  let(:frame2) { double :frame, rolls: [2, 1]}

  it 'is initialized with a list of frames' do
    expect(scoreline.frames).to eq([ [3, 4], [2, 1] ])
  end

  # it 'can add additional frames' do
  #   scoreline.add([1, 2])
  #   expect(scoreline.frames).to eq([[3, 4], [2, 1], [1, 2]])
  # end

end