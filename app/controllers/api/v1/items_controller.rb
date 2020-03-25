class Api::V1::ItemsController < ApplicationController
    def index
        items = Item.all
        render json: {item: items}, each_serializer: itemSerializer
    end

    def show
        item = item.find(params[:id])
        render json: item
    end

    def new
        item = item.new
    end

    def create
        item = item.create(item_params)
    end

    def edit
        item = item.find(params[:id])
    end

    def update
        item = item.find(params[:id])
    end

    def destroy
        @user = current_user
        session.delete(:item_id)
        item.destroy
       
    end

    private

    def user_params
        params.require(:item).permit(:name, :category, :photo, :description, :storage_id, :quantity)
    end
end


