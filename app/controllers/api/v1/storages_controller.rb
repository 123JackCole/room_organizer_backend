class Api::V1::StroragesController < ApplicationController
    
    
    def index
        @storages = Storage.all
        render json: {storage: storage}
    end

    def show
        @storage = Storage.find(params[:id])
        render json: storage
    end

    def new
        @storage = Storage.new
    end

    def create
        @storage = Storage.create(storage_params)
    end

    def edit
        @stroage = Storage.find(params[:id])
    end

    def update
        @storage = Storage.find(params[:id])
    end

    def destroy
        @user = current_user
        session.delete(:storage_id)
        @storage.destroy
       
    end

    private

    def user_params
        params.require(:storage).permit(:name, :size, :photo)
    end
end
