class Team

  def initialize
    @player_list = []
  end

  def add player
    player_list << player
  end

  def valid?
    player_list.count >= 7 && player_list.count <= 10
  end

  def roster
    player_list.dup
  end

  private

  attr_reader :player_list
end
