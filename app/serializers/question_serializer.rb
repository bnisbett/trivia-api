class QuestionSerializer < ActiveModel::Serializer
  belongs_to :quiz
  has_many :answers
  attributes :id,
             :question
end
