class ContactMailer < ActionMailer::Base
  default from: 'wishamigo@gmail.com'
 
  def welcome_email
    mail(to: 'omkarvijay5@gmail.com', subject: 'Welcome to My Awesome Site')
  end
end