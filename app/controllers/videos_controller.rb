class VideosController < ApplicationController

	before_action :require_login, :only=>[:new] 

	def index
		if params[:search] then
			@videos = Video.search(params[:search])
		else 
			@videos = Video.all.order(created_at: :desc);
		end
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
		@purchase = Purchase.new
		if current_user then
			@purchased = current_user.purchased?(@video)
		end
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