class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show]

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurant_path(@restaurant)
  end

  def show
  end

  def index
    @restaurants = Restaurant.all
  end

private

def set_restaurant
  @restaurant = Restaurant.find(params[:id])
end

def restaurant_params
  params.require(:restaurant).permit(:name, :address, :category, :phone_number)
end

end