module Tracking
	def create(name)
		object = new(name)
		instances.push(object)
		return object
	end


	def instances
		@instances ||= []
	end

	def find(name)
		instance.find do |instance|
			instance.name == name
		end
	end
end


class Customer
	extend Tracking

	attr_accessor :name

	def initialize(name)
		@name = name 

	end

	def to_s
		puts "[#{@name}]" 
	
	end

		
	


end


puts "Customer.instances: %s" % Customer.instances.inspect