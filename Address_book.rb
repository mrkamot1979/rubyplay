require "./Contact.rb"

class AddressBook
	attr_accessor :contacts

	def initialize
		@contacts = []
	end


	def add_to_address_book

	end

	

	def print_contact_list
		puts "Contact List"
		contacts.each {
			|contact| puts contact.to_s('last_first')
		}
		
	end

end


addressbook = AddressBook.new

ronin = Contact.new
ronin.first_name = "Ronin"
ronin.middle_name = "Abantao"
ronin.last_name = "Roldan"

ronin.add_phone_number("home", "4551549")

addressbook.contacts.push(ronin)

addressbook.print_contact_list

