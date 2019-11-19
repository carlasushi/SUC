class HomesController < ApplicationController
before_action :set_home, only: [:show, :edit, :update, :destroy]

  def my_dashboard
    @my_home = current_user.home
    @rooms = @my_home.rooms
  end

  def new
    @home = Home.new
  end

  def create
    @home = Home.new(home_params)
    @home.user = current_user
    if @home.save
      redirect_to dashboard_path
    else
      render :new
    end
  end

  def edit
    # @home = Home.find(params[:id])
  end

  def update
    # @home = Home.find(params[:id])
    # @home.update(home_params)
    # redirect_to home_path(@home)
  end

  def destroy

  end

private

  def set_home
    # @home.destroy
    # redirect_to home_path
  end

  def home_params
    params.require(:home).permit(:name)
  end
# add params for rooms?
end
