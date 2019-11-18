class HomesController < ApplicationController

  def index
    @homes = Home.all
  end

  def show

  end

  def new
    @home = Home.new
  end

  def create

  end

  def update

  end

  def destroy

  end

private

end
