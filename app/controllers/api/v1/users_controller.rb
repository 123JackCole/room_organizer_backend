class Api::V1::UsersController < ApplicationController

    # skip_before_action :authorized, only: [:new, :create]
    
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find(params[:id])
        render json: user
    end

    def new
        user = User.new
    end

    def create
        user = User.create(user_params)
        if user.valid?
            render json: user
        else 
            render json: {message: user.errors.full_messages}
        end
    end

    def edit
        user = User.find(params[:id])
    end

    def update
        user = User.find(params[:id])
        if user.valid?
            user.update(user_params)
            render json: user
        else
            render json: {message: user.errors.full_messages}
        end
    end

    def destroy
        user.destroy
        render json: {message: "User successfully deleted"}
    end

    private

    def user_params
        params.require(:user).permit(:name)
    end

end