class RestaurantsController < ApplicationController
  # def index
  #   @restaurants = Restaurant.all
  # end

  # def show
  #   @restaurant = Restaurant.find(params[:id])
  # end

  # def new
  #   @restaurant = Restaurant.new
  # end

  # def create
  #   @restaurant = Restaurant.new(restaurant_params)
  #   @restaurant.save
  #   redirect_to restaurants_path
  # end
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new
    end
  end


  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end

  # def edit
  #   @restaurant = Restaurant.find(params[:id])
  # end

  # def update
  #   @restaurant = Restaurant.find(params[:id])
  #   @restaurant.update(restaurant_params)
  #   redirect_to restaurant_path(@restaurant)
  # end

  # def destroy
  #   @restaurant = Restaurant.find(params[:id])
  #   @restaurant.destroy
  #   redirect_to restaurants_path status: :see_other
  # end

  # private

  # def restaurant_params
  #   params.require(:restaurant).permit(:title, :details, :completed)
  # end
end
