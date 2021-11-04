class Answer < ApplicationRecord
  belongs_to :question
  belongs_to :user

  validates :title, presence: true
  validate :answers_count, on: :create

  scope :true_answers, -> { where(correct: true) }


  private

  def answers_count
    message = 'превышено количество ответов!!'
    errors.add(:question, message) if question.answers.count >= 4
  end

end
