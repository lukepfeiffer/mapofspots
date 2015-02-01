class SpotsController < ApplicationController
  def new
    @spot = Spot.new
  end

  def create
    @spot = Spot.new(spot_params)
    if @spot.save
      redirect_to spots_page
    else
      render new_spots_page
    end
  end

  def spot_params
    params.require(:spot).permit(
    )
  end
end
