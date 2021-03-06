class Barracks
	attr_reader :gold, :food
  def initialize
  	@gold = 1000
  	@food = 80
  end

  def can_train_footman?
    return food >= 2 && gold >= 135
	end

	def train_footman
		if can_train_footman?
		  @gold -= 135
		  @food -= 2
		  return Footman.new
	  else
		  return nil
	  end 
	end

	def train_peasant
		if can_train_peasant?		
			@gold -= 90
			@food -= 5
			return Peasant.new
		else
			return nil
		end
	end

	def can_train_peasant?
    return food >= 5 && gold >= 90
	end

end

