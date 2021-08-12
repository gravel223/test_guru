class User < ApplicationRecord
  has_many :passed_test
  has_many :tests, through: :passed_test

  def titles_by_level(l)
    tests.where(level: l)
  end
end

