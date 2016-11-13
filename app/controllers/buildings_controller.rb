class BuildingsController < ApplicationController

  def index
    @buildings = Building.where(user: current_user)
  end

  def new
    @building = Building.new
  end

  def create
    @building = Building.new(build_params.merge(user: current_user))
    if @building.save
      flash[:notice] = "Purchased Building"
      redirect_to buildings_path
    else
      render :new
    end
  end

  private

  def build_params
    params.require(:building).permit(:type)
  end

end
