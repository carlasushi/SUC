class ChoresController < ApplicationController

def show
  @chore = Chore.find(params[:id])
end

def new
  @room = Room.find(params[:room_id])
  @home = @room.home
  @chore = Chore.new
end

def create
  @room = Room.find(params[:room_id])
  @chore = Chore.new(chore_params)
  @chore.room = @room_id
  @chore.save
  redirect_to dashboard_path
end

def edit

end

def destroy

end

private

def chore_params
  params.require(:chore).permit(:name, :due_date, :description, :image, :user)
end
end
