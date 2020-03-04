class Game

  # attr_reader :player_1, :player_2

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def attack(player)
    player.reduce_hp
    # raise "#{player} has been defeated" if player.hit_points.zero?
  end

end
