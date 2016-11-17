#generate the random number
randnum = Random.new.rand(5)

#puts randnum.to_s

#create an if structure to get the input from the user and check if it is the random number

puts "Enter your guess (0-5) or press 'e' to exit "

answer = gets.chomp

if answer == "e" 
	puts "Bye"
	exit
elsif answer.to_i == randnum
	puts "You guessed correctly!"
else
	puts "Sorry you got it wrong"
	exit
end