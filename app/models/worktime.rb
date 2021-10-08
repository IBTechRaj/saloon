class Worktime < ApplicationRecord
  belongs_to :saloonspa


  validates :weekday,  numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 7 }, presence: true
  validates :opens, :on_or_after => '6:00am', :on_or_before => '10:00am'
end
