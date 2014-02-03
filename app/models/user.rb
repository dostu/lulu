class User < ActiveRecord::Base
	attr_accessor :password

	has_many :comments
	has_many :videos
	has_many :purchases
	has_many :purchased_videos, through: :purchases, source: :video
	has_one :account

	before_save :encrypt_password
	after_create :create_account

	validates :password, confirmation: true
	validates :password_confirmation, presence: true
	validates :username, presence: true
	validates :username, uniqueness: true

	def self.authenticate(username, password)
		user = find_by_username(username)
		if user && user.password_hash == BCrypt::Engine.hash_secret(password, user.password_salt)
			user
		else
			nil
		end
	end

	def encrypt_password
		if password.present?
			self.password_salt = BCrypt::Engine.generate_salt
			self.password_hash = BCrypt::Engine.hash_secret(password, password_salt)
		end
	end

	def purchased?(video)
		purchased_videos.include?(video)
	end

	def create_account 
		account = Account.new(user: self, balance: 20)
		account.save
		self.account = account
	end

end
