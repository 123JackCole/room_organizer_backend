class Api::V1::StoragesController < ApplicationController
    
    
    def index
        storages = Storage.all
        render json: {storage: storages}, each_serializer: StorageSerializer
    end

    def show
        storage = Storage.find(params[:id])
        render json: storage
    end

    def new
        storage = Storage.new
    end

    def create
        storage = Storage.create(storage_params)
    end

    def edit
        storage = Storage.find(params[:id])
    end

    def update
        storage = Storage.find(params[:id])
    end

    def destroy
        session.delete(:storage_id)
        storage.destroy
       
    end

    private

    def storage_params
        params.require(:storage).permit(:user_id, :name, :size, :photo)
    end
end
