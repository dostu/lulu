class Purchase < ActiveRecord::Base
  belongs_to :user
  belongs_to :video
  
  validate :balance_must_be_larger_than_price
  validates :video_id, uniqueness: { scope: :user_id, message: "is already owned by you" }

  before_save :remove_money_from_balance

  def balance_must_be_larger_than_price
  	if user.account.balance < video.price 
		errors.add(:video, "costs more than you have in your balance")
	end 
  end

  def remove_money_from_balance
  	user.account.remove_from_balance(video.price) 
  end

end
