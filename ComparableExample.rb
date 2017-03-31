class Player
	include Comparable
	attr_accessor :name, :score



	def initialize(name, score)
		@name = name 
		@score = score
	end

	def <=>(other_player)
		score <=> other_player.score
	end
		
	



end

player1 = Player.new("nenu", 100)
player2 = Player.new("Tak", 50)

puts "player 1 > player2: %s" % (player1 > player2)
puts "player 1 < player2: %s" % (player1 < player2)
