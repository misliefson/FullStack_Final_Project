class CartController < ApplicationController
  def index
  	@manga = Manga.all
  end

  def clear
  	session[:content].clear
  end

  def checkout
  	@customer = Customer.new
  	if @customer.save

  	end
  end
end
