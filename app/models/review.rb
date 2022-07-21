class Review < ApplicationRecord
  belongs_to :restaurant
  validates_presence_of :rating, :content
  validates_inclusion_of :rating, :in => 0..5
  validates :rating, numericality: { only_integer: true }
end
