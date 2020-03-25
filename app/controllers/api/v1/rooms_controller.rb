class Api::V1::RoomsController < ApplicationController
    
    def index
        rooms = Room.all
        render json: {room: room}
    end

    def show
        room = Room.find(params[:id])
        render json: room
    end

    def new
        room = Room.new
    end

    def create
        room = Room.create(room_params)
    end

    def edit
        room = Room.find(params[:id])
    end

    def update
        room = Room.find(params[:id])
    end

    def destroy
        user = current_user
        session.delete(:room_id)
        room.destroy
       
    end

    private

    def room_params
        params.require(:room).permit(:name, :user_id)
    end

end
