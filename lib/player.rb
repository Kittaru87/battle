
class Player

  DEFAULT_HP = 60
  attr_reader :name, :hit_points

  def initialize(name, hit_points = DEFAULT_HP)
    @name = name
    @hit_points = hit_points
  end

  def reduce_hp
    @hit_points -= 10
  end

end

