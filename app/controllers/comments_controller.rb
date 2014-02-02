class CommentsController < ApplicationController

	def destroy
		@video = Video.find(params[:video_id])
		@comment = @video.comments.find(params[:id])
		@comment.destroy
		redirect_to video_path(@video)
	end

	def create
		@video = Video.find(params[:video_id])
		@comment = @video.comments.build(params[:comment].permit(:body))
		@comment.user = current_user
		@comment.save
		redirect_to video_path(@video)
	end
	
end
