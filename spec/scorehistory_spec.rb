require 'scorehistory'
require 'scoreline'
require 'frame'

describe 'ScoreHistory' do

  let(:frame1) { Frame.new(3, 4) }
  let(:frame2) { Frame.new(2, 1) } 
  let(:frame3) { Frame.new(5, 3) }
  let(:frame4) { Frame.new(6, 2) }
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

  it 'can generate a score history - a list of accumulated totals at the end of each frame' do
    expect(scorehistory.show).to eq([7, 10, 18, 26])
  end

  it 'can correctly calculate the totals at the end of each frame when a spare is scored' do
    frame5 = Frame.new(5, 5)
    frame6 = Frame.new(4, 2)
    scoreline.add(frame5)
    expect(scorehistory.rolls).to eq([ [3, 4], [2, 1], [5, 3], [6, 2], [5, 5] ])
    expect(scorehistory.show).to eq([7, 10, 18, 26, 36])
    scoreline.add(frame6)
    expect(scorehistory.rolls).to eq([ [3, 4], [2, 1], [5, 3], [6, 2], [5, 5], [4, 2] ])
    expect(scorehistory.show).to eq([7, 10, 18, 26, 40, 46])
  end

  it 'can correctly calculate the totals at the end of each frame when a strike is scored' do
    frame5 = Frame.new(10)
    frame6 = Frame.new(5, 2)
    scoreline.add([frame5, frame6])
    expect(scorehistory.rolls).to eq([ [3, 4], [2, 1], [5, 3], [6, 2], [10, 0], [5, 2] ])
    expect(scorehistory.show).to eq([ 7, 10, 18, 26, 43, 50 ])
  end

end