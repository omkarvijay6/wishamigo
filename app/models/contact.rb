class Contact < ActiveRecord::Base
  validates :name, :email, :phone, :occasion, presence: true
end
