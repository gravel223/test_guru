class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user

  scope :true_answers -> { where(correct: true) }
end
