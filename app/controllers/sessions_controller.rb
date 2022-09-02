class SessionsController < ApplicationController

    def create
        
        @user = User.find_by(email_address: params[:email])
        
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            
        else
            redirect_to "/"
        end
    end
end
