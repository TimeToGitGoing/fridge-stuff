class PagesController < ApplicationController
  def home
  end

  def about
  end

  def contact
    @contacts = ["Email 📨", "Whatsapp 📞", "Linked In 👔"]

    if params[:member]
      @contacts = @contacts.select { |contact| contact.start_with?(params[:contact]) }
    end
  end
end
