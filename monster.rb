class Monster
	attr_reader :name

	def initialize(name)
		@name = name
		@actions = {


			
		}
	end


	def say(&block)
		print "#{name} says..."
		yield

	end


end
