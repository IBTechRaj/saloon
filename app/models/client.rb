class Client < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :destroy
  has_many :saloonspas, through: :appointments
end
