
require "./Contact.rb"
require "YAML"


class AddressBook
  attr_reader :contacts
  
  def initialize
    @contacts = []
    open()
  end
  

def open
  if File.exists?("contacts.yml")
    @contacts = YAML.load_file("contacts.yml")
  end  

end


def save
  File.open("contacts.yml", "w") do |file|
    file.write(contacts.to_yaml)
  end
  
end



def run
  loop do
    puts "Address Book"
    puts 'a: Add Contact'
    puts 's: Search Contact'
    puts 'p: Print Contacts'
    puts 'e: Exit'
    print 'Enter your choice: '
    input = gets.chomp
    case input
     when 'e'
      save()
      break
     when 'p'
       print_contact_list
     when 'a'
      add_contact 
    when 's'
      puts 'Enter search term: '
      search = gets.chomp
      find_by_name(search)
      find_by_address(search)
      find_by_phone_number(search) 
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
  

  loop do
    puts 'Add phone number or address?'
    puts 'p: Add phone number'
    puts 'a: Add Address'
    puts '(Any other key goes back)'
    response = gets.chomp.downcase
    case response
    when 'p'
      phone = PhoneNumber.new
      print 'Phone number kind (Home, Work, etc.): '
      phone.kind = gets.chomp
      print 'Phone number: '
      phone.number = gets.chomp
      contact.phone_numbers.push(phone)
    when 'a'
      address = Address.new
      print "Address Kind (Home, Work, etc): "
      address.kind = gets.chomp
      print "Address line 1: "
      address.street_1 = gets.chomp
      print "Address line 2: "
      address.street_2 = gets.chomp
      print "City: "
      address.city = gets.chomp
      print "State: "
      address.state = gets.chomp
      print "Postal Code: "
      address.postal_code = gets.chomp
      contact.addresses.push(address)
    else
      print "\n"
      break
    end
  end
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
