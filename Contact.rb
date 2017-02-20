require "./PhoneNumber.rb"
require "./Address.rb"

class Contact
	attr_writer :first_name, :middle_name, :last_name
	attr_reader :phone_numbers, :addresses

	def initialize
		@phone_numbers = []
		@addresses = []
	end


	def add_address(kind, street_1, street_2, city, state, postal_code)
		address = Address.new
		address.kind = kind
		address.street_1 = street_1
		address.street_2 = street_2
		address.city = city
		address.state = state
		address.postal_code = postal_code
		addresses.push(address)
		
	end

	def print_addresses
		puts "Addresses"
		addresses.each {|address| puts address.to_s('short')}

		
	end


	def add_phone_number(kind, number)
		phone_number = PhoneNumber.new
		phone_number.kind = kind
		phone_number.number = number
		phone_numbers.push(phone_number) 
	end

	def print_phone_numbers
		puts "Phone Numbers"
		phone_numbers.each{
			|phone_number| puts phone_number

		}
	end



	def first_name
		@first_name
	end

	def middle_name
		@middle_name
	end

	def  last_name
		@last_name

	end 

	def first_last
		first_name + " " + last_name  

	end

	def last_first
		last_name + "," + " " + first_name
	end



	def full_name
		full_name = first_name
		if !@middle_name.nil?
			full_name += " " + middle_name + " " + last_name
		else
			full_name += " " + last_name
		end
		return full_name
	end

	def to_s(format = 'full_name') 
		case format
		when 'full_name'
			full_name
		when 'last_first'
			last_first
		when 'first'
			first_name
		when 'last'
			last_name
		else
			first_last	
		end
	end
end

=begin
nino = Contact.new
nino.first_name = "Rogelio"
nino.middle_name = "Gonzalez"
nino.last_name = "Roldan "


nino.add_phone_number("home", "4551549")
nino.add_phone_number("office", "980093")


#add_address(kind, street_1, street_2, city, state, postal_code)
nino.add_address("home", "XX", "Road 1", "XXXX, Quezon City", "NCR", "XXXX")
nino.add_address("japan", "2601", "xxxxxxxx, AA-A", "Omiya-cho, Saiwai-ku, CCCC-Shi", "KANAGAWA", "2xx-00zz")

puts nino.to_s('full_name')
nino.print_phone_numbers
nino.print_addresses
=end
