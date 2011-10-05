class ApplicationController < ActionController::Base
  protect_from_forgery

  def getVotesForReplies(user)
      numvotes=0
      user.replies do |reply|
         numvotes+= Vote.find_all_by_reply_id(reply.id).count
      end
      numvotes
  end

    def authenticate(name,password)
      user = User.find_by_username(name)
      if user
        if user.password == password
          user
        end
      end
    end

    def current_user
      User.find(session[:user_id])
    end


  end

