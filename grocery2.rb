#this method asks the user of the list name and builds the 
#hash.
def create_listahan
	print "What is the name of the list? "
	#ask for the name of the hash
	name = gets.chomp

	#create the hash
	hash = {"name"=>name, "items"=>Array.new }
	return hash
end


#this function populates the created hash by
#using the push functionality

def populate_hash
	#question 1 to ask the item
	print "What is the item name? "
	item_name = $stdin.gets.chomp

	#question 2 to ask the price
	puts "How much? "
	item_price = $stdin.gets.chomp

	#populate "a" hash (hash that is separate)
	hash = {"item_name"=> item_name, "item_price"=>item_price}
	return hash
end

question1 = create_listahan()
puts question1.inspect
question1['items'].push(populate_hash())
puts question1.inspect


#list['items'].push(add_list_item())