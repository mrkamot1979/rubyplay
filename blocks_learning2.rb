#this shows how to use blocks, not breaking the DRY rule

#first method is the "common code" among the 3 methods

def do_this_to_every_item(array)
	#essentially loop through the array
	index = 0 
	while index < array.length
		yield array[index] #this is the "variable that is shared once it jumps out of the common code
		index += 1
	end

end

def total(prices)
	amount = 0
	do_this_to_every_item(prices) do |price|
		amount += price
	end
	return amount
end

def refund(prices)
	amount = 0
	do_this_to_every_item(prices) do |price|
		amount -= price
	end
	return amount

end

def discount(prices)
	amount_off = 0
	do_this_to_every_item(prices) do |price|
		amount_off = price / 3

	end
	return amount_off

end


cart = [55,23,230,12]

puts  total(cart)
