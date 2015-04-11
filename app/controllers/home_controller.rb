class HomeController < ApplicationController

    def home
    	@contact = Contact.new
    end
    
    def occasions
    end

    def about_us
    end

    def contact
    	@contact = Contact.new(contact_params)
    	if @contact.save
    		flash.notice = "Thank you for your request. Our team will contact you within 24 hours"
    		redirect_to root_path
    	else
            @scroll_to = '#contact_us'
            render 'home'
    	end
    end

    private
    def contact_params
    	params.require(:contact).permit!
    end
end
