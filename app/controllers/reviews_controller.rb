class ReviewsController < ApplicationController
  before_action :find_restaurant

  # def new
  #   @review = Review.new
  # end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    @review.save
    # no need for app/views/reviews/create.html.erb
    redirect_to restaurant_path(@restaurant)
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
  # *Strong params*: You need to *whitelist* what can be updated by the user
  # Never trust user data!
  params.require(:review).permit(:content, :rating)
  end
end
