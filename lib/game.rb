class Game

  attr_reader :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
    # @previous_turn = player_2
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

  def switch_turns
    if @current_turn = player_1
      @current_turn = player_2
    else
      @current_turn = player_2
      @current_turn = player_1
    end
  end


end
