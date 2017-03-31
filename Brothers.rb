class Brothers
	include Comparable
	attr_accessor :name, :height

	def initialize(name, height)
		@name, @height = name, height

	end

	def <=>(other_brother)
		self.height = other_brother.height

	end



end


nenu = Brothers.new("nenu", 60)
tak = Brothers.new("tak", 61)





puts nenu.height < tak.height
