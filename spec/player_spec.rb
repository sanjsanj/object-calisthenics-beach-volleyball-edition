require 'player'
describe Player do
  it 'has a gender' do
    male_player = Player.new 'male'
    male_player.gender = 'male'
  end
end
