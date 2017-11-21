class CategoriesController < ApplicationController

  def index
  	@categories = Category.all
  	if params[:search]
      @categories = Category.search(params[:search]).order("created_at DESC")
    else
      @categories = Category.all.order("created_at DESC")
    end
  	@manga = Manga.all
  end

  def show
  end
end
