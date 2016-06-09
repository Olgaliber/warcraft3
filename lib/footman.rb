# http://classic.battle.net/war3/human/units/footman.shtml
# require './unit.rb'

class Footman < Unit
	attr_reader :health_points, :attack_power, :damage
  def initialize()
  	@health_points = 60
  	@attack_power = 10
  	@damage = 10

    # Need to default the 2 instance variables here
    # Also also give code outside this class access to these variables (via attr_reader, attr_writer or attr_accessor)
  end

	def attack!(enemy)
		#enemy.damage(attack_power)
		#@attack_power = 10 
		enemy.damage(@attack_power)
		# most of our test cases want you to modify the value(the attack power) directly 
		# to receive you wanays want to use a symbol, it's never an instance variable 

	end

	def damage(attack_power)
		# @health_points -= attack_power
		@health_points = @health_points - attack_power
	end

	def health_points()	
		return @health_points
	end


end
