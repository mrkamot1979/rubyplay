grades = Hash.new
grades = {"Nenu"=>90,"Thet"=>100}

if grades.has_value?(90)
	grades["food"] = "true"
	puts "ok"
else
	puts "not ok"
end