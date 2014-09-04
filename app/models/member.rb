class Member < ActiveRecord::Base

has_many :consults, :as => :complain

validates :last_name, :email_address, :phone, :password, presence: true
validates :email_address, :phone, uniqueness: { case_sensitive: false, message: " already exists in our system" }
validates :phone, numericality: true
validates :email_address, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "format is test@test.com" }
end
