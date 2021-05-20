class Review < ApplicationRecord
  belongs_to :list
  validates :comment, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: (1..10) }
  # validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 10 }
end
