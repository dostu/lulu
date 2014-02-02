class Account < ActiveRecord::Base
	belongs_to :user

	def add_money
		self.balance += 50
		self.save
	end

	def remove_from_balance(amount)
		self.balance -= amount
		self.save
	end

	def add_to_balance(amount)
		self.balance += amount
		self.save
	end
end
