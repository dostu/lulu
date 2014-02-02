class Video < ActiveRecord::Base
	belongs_to :category
	belongs_to :user
	has_many :comments
	has_many :purchases
	has_many :users, through: :purchases
end
