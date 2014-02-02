class PagesController < ApplicationController

  def home
  	@videos = Video.popular.take(9)
  	@categories = Category.all
  end

end
