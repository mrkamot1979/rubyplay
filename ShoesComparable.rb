class Shoes
  include Comparable
  attr_accessor :size
  
  def initialize(size)
    @size = size
  end
  
  def <=>(other_size)
    size <=> @other_size
  end
  
  
end

shoe1 = Shoes.new(13)
shoe2 = Shoes.new(133)

puts shoe1.size > shoe2.size 
