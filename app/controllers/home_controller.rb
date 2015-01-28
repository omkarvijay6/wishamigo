class HomeController < ApplicationController

    def home
    	@contact_us = ContactUs.new
    end
    
    def occasions
    end

    def about_us
    end

    def contact_us
    end
end
