class Genre < ApplicationRecord
  has_many :movie, dependent: :destroy
  has_one_attached :photo
end
