#inheritence 

class Unit 
	attr_reader :health_points, :attack_power
	def initialize(health_points, attack_power) 
		@health_points = health_points
		@attack_power = attack_power
	end

	def health_points
		return @health_points
	end

	def damage(attack_power)
		@health_points -= attack_power
	end

	def attack!(enemy_unit)
		enemy_unit.damage(@attack_power)
	end
end
