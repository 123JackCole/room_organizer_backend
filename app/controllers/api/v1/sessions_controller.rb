class Api::V1::SessionsController < ApplicationController

    def new
    end
 
    def create
        user = User.find_by(username: params[:username])
        if user
            login_user(user)
            render json: user
        else
            render json: {message: user.errors.full_messages}
        end
    end

    def destroy
        session.delete(:user_id)
        render json: {message: "Log out successful"}
    end

end