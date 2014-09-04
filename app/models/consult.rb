class Consult < ActiveRecord::Base

belongs_to :complain, :polymorphic => true

validates :complain_of_patient, presence: true
end
