class CategoriesController < ApplicationController

	def index
		@categories = Category.all
		@category = Category.new
	end

	def new
		@category = Category.new
	end

	def create
		@category = Category.new(params[:category].permit(:name))
		@category.save
		redirect_to categories_path
	end

	def show
		@category = Category.find(params[:id])
		@videos = @category.videos
	end


end
