class Review < ApplicationRecord
  belongs_to :restaurant

  AUTHORIZED_RATES = (0..5)
  validates :content, presence: true
  validates :rating, inclusion: { in: AUTHORIZED_RATES }, numericality: { only_integer: true }
end
