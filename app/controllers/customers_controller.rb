class CustomersController < ApplicationController
  def index
  	@manga = Manga.all
  	@provinces = Province.all
  end
end
