=begin
	
rescue Exception => e
	
end
def loopit
	puts "Enter how many number to loop"
	numberOfLoops = gets.chomp

	i = 0
	while i < numberOfLoops.to_i
		puts "Looping..."
		i = i + 1
	end

end

sagot=loopit()




def loopit(numberOfLoops)
	i = 0
	while i < numberOfLoops.to_i

	puts "ebak"
	i = i + 1
	end	
end

puts "How many loops do you want to do?"
sagot = gets.chomp
=end


def loopThisWord(word,number)
	i = 0
	while i < number
		puts word
		i = i + 1
	end
end


#loopThisWord("tae",10)

i = 0
while i < 5
  i + i + 1
  
end
puts i