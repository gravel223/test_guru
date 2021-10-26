class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user

  validates :title, presence: true

  scope :true_answers -> { where(correct: true) }

end
