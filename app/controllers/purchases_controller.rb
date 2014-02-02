class PurchasesController < ApplicationController

	def create
		@purchase = Purchase.new(params[:purchase].permit(:user_id, :video_id))
		@purchase.save
		@video = Video.find(@purchase.video)
		redirect_to video_path(@video)
	end
end