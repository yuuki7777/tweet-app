class ApplicationController < ActionController::Base
    before_action :set_current_user

    def set_current_user
       @current_user= User.find_by(id: session[:user_id])
    end

    def set_user_info
         @user_info=User.find_by(id: params[:id],name: params[:name])
    end

    
end
