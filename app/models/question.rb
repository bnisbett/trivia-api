class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers, dependent: :destroy
  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true

  enum question_type: %i(multiple_choice)
end
