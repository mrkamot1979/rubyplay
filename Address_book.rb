require "./Contact.rb"

class AddressBook
  attr_reader :contacts
  
  def initialize
    @contacts = []
  end
  

def run
  loop do
    puts "Address Book"
    puts 'a: Add Contact'
    puts 'p: Print Contacts'
    puts 'e: Exit'
    print 'Enter your choice: '
    input = gets.chomp
    case input
     when 'e'
      break
     when 'p'
       print_contact_list
     when 'a'
      add_contact  
     end
    end
  end
 end


def add_contact
  contact = Contact.new
  print 'First Name: '
  contact.first_name = gets.chomp
  print 'Middle Initial: '
  contact.middle_name = gets.chomp
  print 'Last Name: '
  contact.last_name = gets.chomp
  contacts.push(contact)
end

def print_results(search, results)
    puts search
    results.each do |contact|
      puts contact.to_s('full_name')
      contact.print_phone_numbers
      contact.print_addresses
      puts "\n"
    end
end
  
def find_by_name(name)
  results = []
  search = name.downcase
  contacts.each do |contact|
    if contact.full_name.downcase.include?(search)
      results.push(contact)
    end
  end
    print_results("Name search results (#{search})", results)
end
  
def find_by_phone_number(number)
  results = []
  search = number.gsub("-", "")
  contacts.each do |contact|
    contact.phone_numbers.each do |phone_number|
      if phone_number.number.gsub("-", "").include?(search)
        results.push(contact) unless results.include?(contact)
      end
    end
  end
  print_results("Phone search results (#{search})", results)
end

def find_by_address(query)
  results = []
  search = query.downcase
  contacts.each do |contact|
    contact.addresses.each do |address|
      if address.to_s('long').downcase.include?(search)
        results.push(contact) unless results.include?(contact)
      end
    end
  end
  print_results("Address search results (#{search})", results)
end




  
def print_contact_list
  puts "Contact List"
  contacts.each do |contact|
    puts contact.to_s('last_first')
  end
end





address_book = AddressBook.new
address_book.run

=begin
nino = Contact.new
nino.first_name = "Rogelio"
nino.middle_name = "Abantao"
nino.last_name = "Roldan Jr."

nino.add_phone_number("home", "4551549")
nino.add_phone_number("office", "980093")



#add_address(kind, street_1, street_2, city, state, postal_code)
nino.add_address("home", "23", "Road 1", "xxxxxa, Quezon City", "NCR", "xxxx5")
nino.add_address("japan", "2xx1", "Ux", "rrr, Saiwai-ku, Kawasaki-shi", "KANAGAWA", "2aaaaa")

thet = Contact.new
thet.first_name = "Ma. Catherina"
thet.middle_name = "Guinto"
thet.last_name = "Roldan"

thet.add_phone_number("cavite", "xxx977")
thet.add_phone_number("mobile-japan", "xxxx76")

thet.add_address("cavite", "xxx", "Poblacion", "Bacoor", "Cavite", "Philippines")


address_book.contacts.push(nino)
address_book.contacts.push(thet)



#address_book.find_by_name("A")
#address_book.find_by_phone_number("980093")

#address_book.find_by_phone_number('977')
=end

