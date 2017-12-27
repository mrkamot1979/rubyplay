class PhoneNumber
	attr_accessor :kind, :number

	def to_s
		"#{kind}: #{number}"
	end


end

=begin
ebak = PhoneNumber.new()
ebak.kind = "Home"
ebak.number = "222"
puts ebak.to_s
=end
