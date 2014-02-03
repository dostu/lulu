class PurchasesController < ApplicationController

	before_action :require_login

	def create
		@purchase = Purchase.new(params[:purchase].permit(:video_id))
		@purchase.user = current_user
		@video = Video.find(@purchase.video)
		unless @purchase.save then
			flash.alert = "You do not have enough money in your balance."
		end
		redirect_to video_path(@video)
	end
end