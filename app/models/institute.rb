class Institute < ActiveRecord::Base

validates :name, :visiting_address, :email_address, :phone, presence: true
validates :email_address, :phone, uniqueness: { case_sensitive: false, message: " already exists in our system" }
validates :phone, numericality: true
validates :email_address, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "format is test@test.com" }
end
