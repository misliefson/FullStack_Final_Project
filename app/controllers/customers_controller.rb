class CustomersController < ApplicationController
  def index
  	@manga = Manga.all
  end
end
