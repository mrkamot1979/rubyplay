require "./phone_number.rb"

class Contact
	attr_writer :first_name, :middle_name, :last_name


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
		last_name + " " + first_name
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

jason = Contact.new
jason.first_name = "Nino"
jason.last_name = "Roldan"
puts jason.to_s
puts jason.to_s('full_name')
puts jason.to_s('last_first')

nick = Contact.new
nick.first_name = "Nino"
nick.middle_name = "Abantao"
nick.last_name = "Roldan"
puts nick.to_s()