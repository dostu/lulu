class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user].permit(:username, :password, :password_confirmation))
  	if @user.save
  		redirect_to root_url, :notice => "Signed up!"
  	else
  		render "new"
  	end
  end

  def show
  	@user = current_user
    @purchased_videos_count = @user.purchased_videos.count
    @purchased_videos = @user.purchased_videos.order(created_at: :desc).take(6)
    @videos_count = @user.videos.count
    @videos = @user.videos.order(created_at: :desc).take(6)
  end

  def money
    @user = current_user
    @user.account.add_money
    redirect_to user_path(@user)
  end

end
