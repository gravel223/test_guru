class User < ApplicationRecord
  has_many :passed_test
  has_many :tests, through: :passed_test
  has_many :tests_author, class_name: 'Test', foreign_key: :author_id

  def titles_by_level(l)
    tests.where(level: l)
  end
end

