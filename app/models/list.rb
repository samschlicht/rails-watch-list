class List < ApplicationRecord
  validates :name, presence: true
  validates :name, uniqueness: true
  has_many :movies, through: :bookmarks
  has_many :bookmarks
end
