class Question < ApplicationRecord
  MAX_ANSWERS = 4

  belongs_to :test
  has_many :answers

  validates :body, presence: true
  validate :answer_count, on: :create
  private

  def answer_count
    message = 'Превышенно колличество ответов!'
    errors.add(:question, message) if question.answers.count >= MAX_ANSWERS
  end

end
