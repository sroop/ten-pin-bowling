require 'scorehistory'
require 'scoreline'
require 'frame'

describe 'ScoreHistory' do

  let(:frame1) { Frame.new(3, 4) }
  let(:frame2) { Frame.new(2, 1) } 
  let(:frame3) { Frame.new(5, 3) }
  let(:frame4) { Frame.new(6, 2) }
  let(:frame5) { Frame.new(2, 0) } 
  let(:scoreline) { ScoreLine.new([frame1, frame2, frame3, frame4]) }
  let(:scorehistory) { ScoreHistory.new(scoreline) }

  it 'is initialized with a score line' do
    expect(scorehistory.scoreline).to eq(scoreline)
  end

  it 'can access the full list of frame rolls through the scoreline' do
    expect(scorehistory.rolls).to eq([ [3, 4], [2, 1], [5, 3], [6, 2] ])
  end

  it 'can calculate the total score for a game' do
    expect(scorehistory.total).to eq(26)
  end

end