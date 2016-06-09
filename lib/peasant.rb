class Peasant < Unit 
	attr_reader :health_points, :attack_power
	def initialize() 
		# super (hp, 0)	
		@health_points = 35
		@attack_power = 0
	end


end 