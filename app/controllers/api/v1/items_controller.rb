class Api::V1::ItemsController < ApplicationController
    
    def index
        items = Item.all
        render json: items
    end

    def show
        item = Item.find(params[:id])
        render json: item
    end

    def new
        item = Item.new
    end

    def create
        item = Item.create(item_params)
    end

    def edit
        item = Item.find(params[:id])
    end

    def update
        item = Item.find(params[:id])
    end

    def destroy
        item.destroy
        render json: {message: "Item successfully deleted"}
    end

    private

    def item_params
        params.require(:item).permit(:name, :category, :photo, :description, :storage_id, :quantity)
    end

end


