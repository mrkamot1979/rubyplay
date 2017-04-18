module Inventoryable

  def stock_count
    @stock_count ||= 0
  end

  def stock_count=(number)
    @stock_count = number
  end

  def in_stock?
    stock_count > 0
  end





end

class Shirt
  attr_accessor :attributes

  def initialize(attributes)
    @attributes = attributes
  end
end

class Pant
  attr_accessor :attributes

  def initialize(attributes)
    @attributes = attributes
  end
end

class Accessory
  attr_accessor :attributes

  def initialize(attributes)
    @attributes = attributes
  end
end

shirt1 = Shirt.new(name: "MTF", size: "L")
shirt2 = Shirt.new(name: "MTF", size: "M")