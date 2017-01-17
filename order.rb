class Order
	attr_reader :email, :total

	def initialize(email, total)
		@email = email
		@total = total

	end


	def to_s
		"#{email}: #{total}"
	end



end


#nenuorder = Order.new("nino.roldan@gmail.com", 200)

#create an array to populate the orders

orders = []

5.times {
	orders << Order.new("customer@email.com", 200)
}

puts orders