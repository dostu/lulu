class Purchase < ActiveRecord::Base
  belongs_to :user
  belongs_to :video
  
  validate :video_must_be_created_by_another_user
  validate :balance_must_be_larger_than_price
  validates :video_id, uniqueness: { scope: :user_id, message: "is already owned by you" }

  after_save :remove_money_from_buyers_balance
  after_save :incement_purchase_count
  after_save :add_money_to_sellers_balance

  def balance_must_be_larger_than_price
  	if user.account.balance < video.price then
  		errors.add(:video, "costs more than you have in your balance")
  	end 
  end

  def video_must_be_created_by_another_user
  	if user == video.user then
  		errors.add(:video, "is created by you")
  	end
  end

  def remove_money_from_buyers_balance
  	user.account.remove_from_balance(video.price) 
  end

  def incement_purchase_count
    video.increment_purchase_count
  end

  def add_money_to_sellers_balance
    video.user.account.add_to_balance(video.price) 
  end
end
