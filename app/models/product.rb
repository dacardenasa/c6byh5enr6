class Product < ApplicationRecord
  validates :name, :price, presence: true
  validates :name, length: { minimum: 2 }
  validates :price, numericality: true
end
