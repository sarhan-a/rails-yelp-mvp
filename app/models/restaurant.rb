class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  validates_presence_of :name, :address, :category
  validates :category, inclusion: { in: CATEGORIES }

end
