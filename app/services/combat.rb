class Combat
  attr_reader :troops_1, :troops_2
  def initialize(defenders, attackers)
    @troops_1 = attackers
    @troops_2 = defenders
  end

  def battle
    troops_1.each do |attacker|
      attack(attacker, troops_2)
    end
    troops_2.each do |defender|
      attack(defender, troops_1)
    end
  end

  private

  def attack(attacker, defenders)
    attack = attacker.damage
    while attack > 0
      break if defenders.reload.empty?
      defender = defenders.last
      attack -= defender.defend(attack)
      defender.delete unless defender.alive?
    end
  end
end
