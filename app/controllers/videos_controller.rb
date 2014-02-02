class VideosController < ApplicationController

	def index
		@videos = Video.all
	end

	def new
		@video = Video.new
	end

	def create
		@video = Video.new(params[:video].permit(:title, :description, :youtube_id, :category_id, :price))
		@video.user = current_user
		@video.save
		redirect_to @video
	end

	def show
		@video = Video.find(params[:id])
		@category = @video.category
		@comments = @video.comments
	end

	def edit 
		@video = Video.find(params[:id])
	end

	def update
		@video = Video.find(params[:id])

		if @video.update(params[:video].permit(:title, :description, :youtube_id, :category_id, :price))
			redirect_to @video
		else
			render 'edit'
		end
	end

	def destroy
		@video = Video.find(params[:id])
		@video.destroy

		redirect_to videos_path
	end

end