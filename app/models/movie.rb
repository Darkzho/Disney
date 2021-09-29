class Movie < ApplicationRecord
  has_many :casts, dependent: :destroy
  belongs_to :genre
  has_many :characters, through: :cast
  has_one_attached :photo
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
end
