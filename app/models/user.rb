class User < ActiveRecord::Base
  has_many :votes
  has_many :replies
  has_many :posts
end
