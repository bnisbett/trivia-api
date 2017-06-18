class QuizSerializer < ActiveModel::Serializer
  has_many :questions
  attributes :id,
             :name,
             :title,
             :description
end
