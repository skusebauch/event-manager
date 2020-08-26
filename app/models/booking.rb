class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date
  validate :start_date_after_date_today

  private

  def end_date_after_start_date
    errors.add(:end_date, "Das Start-Datum muss vor dem End-Datum liegen") if end_date < start_date
  end

  def start_date_after_date_today
    errors.add(:start_date, "Das Start-Datum kann nicht in der Vergangenheit liegen") if start_date < Date.today
  end
end
