class AnswerSerializer < ActiveModel::Serializer
  belongs_to :question
  attributes :id,
             :answer
end
