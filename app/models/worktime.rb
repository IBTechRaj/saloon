class Worktime < ApplicationRecord
  belongs_to :saloonspa


  validates :weekday,  numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 7 }, presence: true
  end
