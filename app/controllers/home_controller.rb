class HomeController < ApplicationController

    def home
    	@contact_us = ContactUs.new
    end
    
    def occasions
    end

    def about_us
    end

    def contact_us
    	@contact_us = ContactUs.new(contact_us_params)
    	if @contact_us.save
    		flash.notice = "Thank you for your request. Our team will contact you within 24 hours"
    		redirect_to home_path
    	else
            @scroll_to = '#contact_us'
            render 'home'
    	end
    end

    private
    def contact_us_params
    	params.require(:contact_us).permit!
    end
end
