class ContactsController < InheritedResources::Base

  private

    def contact_params
      params.require(:contact).permit(:title, :email, :phone)
    end
end

