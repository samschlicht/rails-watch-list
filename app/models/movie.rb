class Movie < ApplicationRecord
  validates :title, :overview, :poster_url, presence: true
  validates :title, uniqueness: true
  validates :rating, numericality: { only_float: true, in: 0..10 }
  has_many :bookmarks
  has_many :lists, through: :bookmarks
end
