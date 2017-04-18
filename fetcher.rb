module Fetcher
	def fetch(item)
		puts "let me fetch the #{item}!"
	end

end


class Aso
	include Fetcher
	attr_accessor :name

	def initialize(name)
		@name = name 
	end

end


dog1 = Aso.new("Ronin")
dog1.fetch("ball")

