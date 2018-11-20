class Transaction < ApplicationRecord
  belongs_to: :user

  validates :symbol, presence: true, length: { in: 1..5 }
  validates :quantity,
    presence: true,
    numericality: {
      only_integer: true,
      greater_than: 0
    }
  validates :price_per_share, presence: true, numericality: { greater_than: 0 }
end
