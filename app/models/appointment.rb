class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :saloonspas 
  belongs_to :client

  validates :apptdate, presence: true, inclusion: { in: (Date.today+1..Date.today+7.days) }
  validates :service, presence: true
end
