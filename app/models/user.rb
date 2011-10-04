class User < ActiveRecord::Base
  has_many :votes
  has_many :replies
  has_many :posts

  validates :username, :presence => true, :uniqueness => true
  validates :password, :confirmation => true

  public

  def authenticate(name,password)
    if user = find_by_name(name)
      if user.password == password
        user
      end
    end
  end

end
