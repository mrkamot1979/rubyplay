names = Hash.new

names = {"1"=>"Nino","2"=>"Tak", "3a"=>"Mon", "3b"=>"Ching" }



names.each do |key,value|
	puts "Currentx key is #{key} and the value is #{value}"
	
end

=begin
business = { "name" => "Treehouse", "location" => "Portland, OR" }

business.each do |key, value|
  puts "The hash key is #{key} and the value is #{value}."
end
=end