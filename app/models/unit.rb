class Unit < ApplicationRecord
  def defend(damage)
    self.health -= damage
    self.save
    self.health < 0 ? damage + self.health : damage
  end

  def alive?
    self.health > 0
  end
end
