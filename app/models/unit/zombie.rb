class Unit::Zombie < Unit
  @health = 2
  @damage = 2

  def initialize(attributes=nil)
    attr_with_defaults = {health: Zombie.health, damage: Zombie.damage}
    attr_with_defaults.merge!(attributes) if attributes
    super(attr_with_defaults)
  end

  class << self
    attr_reader :health, :damage
  end
end
