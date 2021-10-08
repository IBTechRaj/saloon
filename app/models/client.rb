class Client < ApplicationRecord
  belongs_to :user
  has_many :appointments, dependent: :destroy
  has_many :saloonspas, through: :appointments

  validates :name, presence: true
  validates :mobile, presence: true, length: { is: 10 }
end
