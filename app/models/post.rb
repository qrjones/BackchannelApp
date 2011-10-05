class Post < ActiveRecord::Base
   has_many :replies
  belongs_to :user

   # validates :title, :presence => true
   def self.search(search)
     all(:conditions => ['title like ?',  "%#{search}%"] )
   end

end