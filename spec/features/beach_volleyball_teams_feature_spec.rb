require 'team'
describe 'Beach Volleyball teams feature' do

  let(:team) { Team.new }
  context 'Team Awesome is valid because it meets the league criteria' do
    it 'has 7 or more players' do
      add_players_to_team 5, 2, team
      expect(team).to be_valid
    end
  end

  context 'Team Awful is invalid because it does not meet the league criteria' do
    it 'has less than 7 players' do
      add_players_to_team 4, 2, team
      expect(team).not_to be_valid
    end

    it 'has more than 10 players' do
      add_players_to_team 9, 2, team
      expect(team).not_to be_valid
    end

    it 'has fewer than 2 men' do
      add_players_to_team 0, 7, team
      expect(team).not_to be_valid
    end

    it 'has fewer than 2 women' do
      add_players_to_team 7, 0, team
      expect(team).not_to be_valid
    end
  end

  def add_players_to_team quantity_of_males, quantity_of_females, team
    quantity_of_males.times { |n| team.add Player.new 'male' }
    quantity_of_females.times { |n| team.add Player.new 'female' }
  end
end

# In order to play with more people
# As a captain
# I want to create a team
# Acceptance criteria:
#
# Mixed 6 a side volleyball, so the size of team should be minimum 7 and maximum 10.
# Mixed League Requirement – Min of 2 men or women on the field at all time. That means than when creating a team at least 2 men or women should be included.
# A player can be part of only one team in the league.
