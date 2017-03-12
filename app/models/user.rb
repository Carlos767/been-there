class User < ApplicationRecord
  has_secure_password
  has_many :articles
  has_many :votes
  has_many :comments

  def create
  end
end
