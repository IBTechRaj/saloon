class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :saloonspas 
  belongs_to :client
end
