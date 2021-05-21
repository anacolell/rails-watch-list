class Review < ApplicationRecord
  belongs_to :list
  validates :comment, presence: true
  validates :rating, numericality: { only_integer: true }, inclusion: { in: (1..10) }
end
