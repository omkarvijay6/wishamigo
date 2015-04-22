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
    		flash.keep[:success] = "Thank you for your request. Our team will contact you within 24 hours"
            contact_mail = ContactMailer.welcome_email
            contact_mail.deliver
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
