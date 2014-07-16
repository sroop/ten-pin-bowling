require 'bonus_frame'

describe 'BonusFrame' do

  let(:bonus_frame) { BonusFrame.new(3, 2) }

  it 'can contain two rolls' do
    expect(bonus_frame.rolls).to eq([3,2])
  end

end