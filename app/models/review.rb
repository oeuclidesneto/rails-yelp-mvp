class Review < ApplicationRecord
  belongs_to :restaurant
  validates_inclusion_of :number, {:in 0..5}
  validates :content, :rating, presence :true
  validates :rating, inclusion: => 0..5
  validates :rating, numbericality: {only_integer: true}
end
