class Unit::Human < Unit
  @health = 10
  @damage = 10

  def initialize(attributes=nil)
    attr_with_defaults = {health: Human.health, damage: Human.damage}
    attr_with_defaults.merge!(attributes) if attributes
    super(attr_with_defaults)
  end

  class << self
    attr_reader :health, :damage
  end
end
