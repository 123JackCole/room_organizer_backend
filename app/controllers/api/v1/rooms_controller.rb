class Api::V1::RoomsController < ApplicationController
    
    def index
        rooms = Room.all
        render json: rooms
    end

    def show
        room = Room.find(params[:id])
        render json: room
    end

    def new
        room = Room.new
        render json: room 
    end

    def create
        room = Room.create(room_params)
        render json: room 
    end

    def edit
        room = Room.find(params[:id])
    end

    def update
        room = Room.find(params[:id])
    end

    def destroy
        room.destroy
        render json: {message: "Room successfully deleted"}
    end

    private

    def room_params
        params.require(:room).permit(:name, :user_id)
    end

end
