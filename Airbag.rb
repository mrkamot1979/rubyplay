module Airbag
	def deploy
		puts "Airbag deploying!"
	end

end


class Car

include Airbag

	def initialize(make, model)
		@make, @model = make, model
	end


end



car1 = Car.new("Toyota", "Camry")

car1.deploy
