class Video < ActiveRecord::Base

	belongs_to :category
	belongs_to :user
	has_many :comments
	has_many :purchases
	has_many :users, through: :purchases

	def self.popular
		self.all.order(purchase_count: :desc)
	end

	def increment_purchase_count 
		self.purchase_count += 1
	end

	def thumbnail
		"http://img.youtube.com/vi/#{self.youtube_id}/0.jpg"
	end
end
