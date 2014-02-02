class PurchasesController < ApplicationController

	before_action :require_login

	def create
		@purchase = Purchase.new(params[:purchase].permit(:video_id))
		@purchase.user = current_user
		@purchase.save
		@video = Video.find(@purchase.video)
		redirect_to video_path(@video)
	end
end