class Api::V1::RoomsController < ApplicationController
    
    def index
        rooms = Room.all
        render json: {room: room}
    end

    def show
        rooms = Room.find(params[:id])
        render json: room
    end

    def new
        rooms = Room.new
    end

    def create
        rooms = Room.create(room_params)
    end

    def edit
        rooms = Room.find(params[:id])
    end

    def update
        rooms = Room.find(params[:id])
    end

    def destroy
        user = current_user
        session.delete(:room_id)
        rooms.destroy
       
    end

    private

    def room_params
        params.require(:room).permit(:name)
    end

end
