class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end


  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    # no need for app/views/restaurants/create.html.erb
    redirect_to restaurant_path(@restaurant)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    #row below not needed if new review page separated from the show
    @review = Review.new
  end

private

  def restaurant_params
  # *Strong params*: You need to *whitelist* what can be updated by the user
  # Never trust user data!
  params.require(:restaurant).permit(:name, :address, :category, :phone_number)
  end


end
