class AboutsController < InheritedResources::Base

  private

    def about_params
      params.require(:about).permit(:title, :content)
    end
end

