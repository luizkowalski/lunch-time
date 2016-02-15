class PlacesController < ApplicationController
  before_action :authenticate

  def index
    @places = Place.all
  end

  def create
    Place.create(place_params)
    redirect_to places_url
  end

  def destroy
    Place.find(params[:id]).delete
    redirect_to places_url
  end

  private

  def place_params
    params.require(:place).permit(:name, :value)
  end
end
