class Article < ApplicationRecord
  belongs_to :user
  belongs_to :location
  has_many :votes
  has_many :comments
end
