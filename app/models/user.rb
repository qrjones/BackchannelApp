class User < ActiveRecord::Base
   validates :user_name, :presence => true
   validates :user_password, :presence => true,
                             :length => { :minimum => 6}
end
