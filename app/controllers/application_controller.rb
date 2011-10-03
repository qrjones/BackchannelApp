class ApplicationController < ActionController::Base
  protect_from_forgery


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

