class Bank_Account
	attr_reader :name, :balance

	def initialize(name)
		@name = name
		@transactions = Array.new
	end


	def add_transaction(description, amount)
		@transactions.push(description: description, amount: amount)
	end

	def credit(description, amount)
		add_transaction(description, amount)
	end


	def debit(description, amount)
		add_transaction(description, -amount)
	end

	def checkbalance
		balance = 0
		@transactions.each do |transaction|
			balance += transaction[:amount]
		end
		return balance
	end

	def to_s
    "Name: #{name}, Balance: #{sprintf("%0.2f", balance)}"
  	end


end

bank = Bank_Account.new("Jason")
bank.credit("Paycheck", 100)
bank.debit("Groceries", 40)
puts bank.to_s