class Restaurant < ApplicationRecord
  # validates :category,
  validates_inclusion_of :category, in: %w[chinese italian japanese french belgian]
  has_many :reviews, dependent: :destroy
  validates :name, :address, :category, presence :true
end
