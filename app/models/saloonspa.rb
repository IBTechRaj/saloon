class Saloonspa < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :destroy 
  has_many :clients, through: :appointments

  validates :name, presence: true
  validates :address, presence: true
  validates :pincode, presence: true, length: { is: 6 }
  validates :pan, presence: true, length: { is: 10 }
  validates :chairs, numericality: {message: "%{value} should be 1 or more"}

end
