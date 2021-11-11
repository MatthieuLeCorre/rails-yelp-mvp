class Review < ApplicationRecord
  belongs_to :restaurant

  validates :content, presence: true
  validates :rating, numericality: { in: 0..5 }
  validates :rating, acceptance: { accept: [0, 1, 2, 3, 4, 5] }, presence: true
end
