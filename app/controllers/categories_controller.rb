class CategoriesController < ApplicationController

  def index
    @category = Category.new
  	@categories = Category.all

    if params[:category]
      @categories = Category.where("id = ? ", params[:category][:id])
    end
  	@manga = Manga.all
  end

  def show
  end
end
