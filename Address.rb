class Address
	attr_writer :kind, :street_1, :street_2, :city, :state, :postal_code


	def to_s(format = 'short')
		address = ''
		case format
			when 'long'
				address += street_1 + "\n"
				address += street_2 + "\n" if !street_2.nil?
				address += ""	if street_2.nil?


		end


	end



end
