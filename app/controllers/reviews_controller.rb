class ReviewsController < ApplicationController
  
  #GET /tours/:tour_id/reviews/new 
  def new
    @tour = Tour.find(params[:tour_id])
    @review = @tour.reviews.new
  end
  
  #POST /reviews
  def create
    @tour = Tour.find(params[:tour_id])
    if user_signed_in?
      @review = current_user.reviews.new(params[:review])
    else
      @review = Review.new(params[:review])
    end
    @review.tour_id = @tour.id
    @review.save
    respond_to do |format|
      format.html { redirect_to tour_path(@tour)}
      format.js
    end
  end

  def index
  end

  def show
    @review = Review.find(params[:id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @booking }
    end
  end
end
