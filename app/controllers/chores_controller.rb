class ChoresController < ApplicationController

def new

end

def create
 @chore = Chore.new(chore_params)

end

def edit

end

def destroy

end

private

def chore_params
  params.require(:chore).permit(:name, :due_date, :done_date, :done, :description, :image)
end
end
