
class Player
  include Comparable
  attr_accessor :name, :score

  def <=>(other_player)
    score <=> other_player.score
  end

  def initialize(name, score)
    @name, @score = name, score
  end
end