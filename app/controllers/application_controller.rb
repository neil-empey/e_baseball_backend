class ApplicationController < ActionController::API
  include ::ActionController::Cookies

    def current_user
      User.find_by(id: session[:id])
    end

    def logged_in?
      !!current_user
    end


end
