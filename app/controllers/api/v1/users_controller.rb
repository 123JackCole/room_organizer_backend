class Api::V1::UsersController < ApplicationController

    skip_before_action :authorized, only: [:new, :create]
    
    def index
        users = User.all
        render json: {users: users}
    end

    def show
        @user = User.find(params[:id])
        render json: user
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        Cart.create(user_id:@user.id)
        if @user.valid?
            redirect_to @user
        else 
            flash[:notice] = @user.errors.full_messages
            render :new
        end
    end

    def edit
        @user = User.find(params[:id])
    end

    def update
        @user = User.find(params[:id])
        if @user.valid?
            @user.update(plant_params)
            redirect_to @user
        else
            flash[:notice] = user.errors.full_messages
            render :edit
        end
    end

    def destroy
        @user = current_user
        session.delete(:user_id)
        @user.destroy
        redirect_to :root
    end

    private

    def user_params
        params.require(:user).permit(:username)
    end

end