
#in this example, the total, refund and discount methods are all sharing  the same code, a clear violation of D-R-Y (Do Not Repeaet Youreelf)

def total(array)
	index = 0
	amount = 0

	while index < array.length 
		amount += array[index]
		index += 1
	end
	return amount
end	
		

def refund(array)
	index = 0
	amount = 0

	while index < array.length 
		amount -= array[index]
		index += 1
	end
	return amount
end


def discount(array)
	index = 0 
	amount = 0
	while index < array.length
		amount_discount = array[index] / 3
		puts "You save #{amount_discount}"
	index += 1
end
	return amount
end


shopping_cart = [19,22,30,54,1254]

puts total(shopping_cart)
puts "-----"
puts refund(shopping_cart)
puts "-----"
puts discount(shopping_cart)

