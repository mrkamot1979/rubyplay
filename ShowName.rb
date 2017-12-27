
class ShowName

	def initialize(*args)
		if args.size  == 2
			puts "My name is #{args[0]} #{args[1]}"
		else args.size == 3
			puts "My name is #{args[0]} #{args[1]} #{args[2]}"
		end

	
	end

end


#nenu = ShowName.new("First argument","2nd argument","23rd argument", "4th argument")

nenu = ShowName.new("rogelio", "roldan")

# The Rectangle constructor accepts arguments in either  
# of the following forms:  
#   Rectangle.new([x_top, y_left], length, width)  
#   Rectangle.new([x_top, y_left], [x_bottom, y_right])  
=begin
class Rectangle  
  def initialize(*args)  
    if args.size < 2  || args.size > 3  
      # modify this to raise exception, later  
      puts 'This method takes either 2 or 3 arguments'  
    else  
      if args.size == 2  
        puts 'Two arguments'  
      else  
        puts 'Three arguments'  
      end  
    end  
  end  
end  
Rectangle.new([10, 23], 4, 10)  
Rectangle.new([10, 23], [14, 13])  
=end
