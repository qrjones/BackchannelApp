class Post < ActiveRecord::Base
   has_many :replies
  belongs_to :user
end