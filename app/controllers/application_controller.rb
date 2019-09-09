class ApplicationController < ActionController::Base

    def log_in(user)
        session[:user_id] = user.id
    end

    def remember(user)
        user.remember
        cookies.permanent[:remember_token] = user.remember_token
      end
end
