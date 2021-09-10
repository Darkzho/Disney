class Movie < ApplicationRecord
  has_many :casts
  has_many :genders
end
