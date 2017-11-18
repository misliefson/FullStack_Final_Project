class CategoriesController < ApplicationController

  def index
  	@categories = Category.all
  	@manga = Manga.all
  end

  def show
  end
end
