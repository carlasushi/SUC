class RoomsController < ApplicationController
  def show
    @room = Room.find(params[:id])
  end

  def new
    @home = Home.find(params[:home_id])
    @room = Room.new
  end

  def create
    @home = Home.find(params[:home_id])
    @room = Room.new(room_params)
    @room.home = @home
    @room.save
    redirect_to dashboard_path
  end

  private

  def room_params
    params.require(:room).permit(:name)
  end
end
