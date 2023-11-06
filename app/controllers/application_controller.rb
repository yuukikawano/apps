class ApplicationController < ActionController::Base
  include SessionsHelper

  private
    def logged_in
      unless logged_in?
        redirect_to login_path 
      end 
    end
end
