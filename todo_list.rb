require "./todo_item.rb"

class TodoList
	attr_reader :name, :todo_items

	def initialize(name)
		@name = name
		@todo_items = Array.new
	end
end

todo_list = TodoList.new("Groceries")
todo_item = TodoItem.new("Milk")

