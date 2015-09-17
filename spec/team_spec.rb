require 'team'

describe Team do

  subject(:team) { Team.new }

  it {is_expected.to respond_to(:roster)}

  it 'allows a player to be added' do
    expect{team.add :player}.to change{team.roster.count}.from(0).to(1)
  end

  it 'is invalid when fewer than 7 players have been added' do
    3.times { team.add :player }
    expect(team).not_to be_valid
  end

  it {is_expected.to respond_to(:valid?)}
end





# it 'should allow a 7 player team' do
#   7.times { |n| subject.add :player }
#   expect(subject).to be_valid
# end
