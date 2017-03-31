require "./Player.rb"
require "./Game.rb"

player1 = Player.new("Jason", 100)
player2 = Player.new("Kenneth", 80)
player3 = Player.new("Nick", 95)
player4 = Player.new("Craig", 20)

game1 = Game.new
game1.add_player(player1)
game1.add_player(player2)

game2 = Game.new
game2.add_player(player3)
game2.add_player(player4)


#iterate through the players
game1.each do |player|
  puts "Player: #{player.name}, score: #{player.score}"
end


#grab high scores
high_scores = game1.select do |player|
  player.score > 80
end
puts high_scores.inspect

#use the find method
players = game1.find{|player| player.score > 80}
puts "Players with a score > 80", players.inspect