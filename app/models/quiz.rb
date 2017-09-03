class Quiz < ApplicationRecord
  has_many :questions, dependent: :destroy
  accepts_nested_attributes_for :questions, reject_if: :all_blank, allow_destroy: true

  validates :name, presence: true
  validates :title, presence: true
  validates :description, presence: true
  validates :start_at, presence: true
  validates :end_at, presence: true
  validate :end_date_after_start_date

  def end_date_after_start_date
    return if start_at.blank? || end_at.blank?

    errors.add(:end_at, "cannot be before the start date") if end_at < start_at
  end
end
