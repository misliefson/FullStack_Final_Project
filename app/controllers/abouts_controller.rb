class AboutsController < InheritedResources::Base

  def index
  	@abouts = About.first
  end

  def show
  end
end

