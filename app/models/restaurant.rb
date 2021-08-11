class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  AUTHORIZED_CATEGORIES = %w(chinese italian japanese french belgian)
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: AUTHORIZED_CATEGORIES }
end
