class PhoneNumber
	attr_accessor :kind, :number

	def to_s
		"#{kind}: #{number}"
	end


end


nrphone = PhoneNumber.new

nrphone.kind = "home"
nrphone.number = "980093"

puts nrphone.to_s

