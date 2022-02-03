class Test < ApplicationRecord
  belongs_to :category
  has_many :test_passed
  has_many :users, through: :test_passed
  has_many :questions
  belongs_to :author, class_name: 'User'

  validates :title, presence: true, uniqueness: { scope: :level,
                                                  message: "Может существовать только один тест с таким именем и уровнем сложности!" }

  validates :level, numericality: { only_integer: true,
                                    greater_than_or_equal_to: 0 }

  scope :complexity, -> (complexity) { where(level: complexity) }
  scope :easy, -> { complexity(0..1) }
  scope :middle, -> { complexity(2..4)}
  scope :hard, -> { complexity(5..Float::INFINITY) }

  scope :by_category, ->(title) { joins(:category).where(categories: { title: title }) }

   def self.titles_by_category(title)
     by_category(title).order(title: :desc).pluck(:title)
  end
end
