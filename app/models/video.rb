class Video < ActiveRecord::Base

	belongs_to :category
	belongs_to :user
	has_many :comments
	has_many :purchases
	has_many :users, through: :purchases

	after_initialize :default_values

	def self.popular
		self.all.order(purchase_count: :desc)
	end

	def increment_purchase_count 
		self.purchase_count += 1
		self.save
	end

	def thumbnail
		"http://img.youtube.com/vi/#{self.youtube_id}/0.jpg"
	end

	private

    def default_values
      self.purchase_count = 0
    end
end
