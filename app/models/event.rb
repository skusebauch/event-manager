class Event < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many :bookings
  validates :name, :description, :start_date, :end_date, presence: true
end
