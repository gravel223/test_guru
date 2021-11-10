class User < ApplicationRecord
  has_many :passed_test
  has_many :tests, through: :passed_test
  has_many :created_tests, class_name: 'Test', foreign_key: :author_id

  validates :email, presence: true

  def titles_by_level(level)
   tests.where(level: level)
  end
end

