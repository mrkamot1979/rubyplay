class Bicycle
	attr_accessor  :make, :model, :year, :tire_size
	#attr_reader :make
	

	def initialize(make, model, year, tire_size)
		@make = make
		@model=model
		@year = year
		@tire_size = tire_size
	end


	def bike_details
		return "The bike is a #{make} #{model} #{year} with tire size #{tire_size}"
		
	end



end

uzzi = Bicycle.new("Intense", "Uzzi", "2008", "26")

puts uzzi.bike_details

uzzi.make = "uzzi"
