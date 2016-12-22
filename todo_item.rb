class TodoItem
	attr_reader :name, :complete

	def initialize(name)
		@name = name
		@complete = false
	end




	def complete?
		return @complete
	end

	def mark_complete!
		@complete = true
	end

	def mark_incomplete!
		@complete = false
	end


end


