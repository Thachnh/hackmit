class ToursController < ApplicationController
  before_filter :authenticate_user!, :except => [:show, :index] 
  layout "landing", only: [:index]
  # GET /tours
  # GET /tours.json
  def index
    if params[:tag]
      @tours = Tour.tagged_with(params[:tag]).limit(6)
    else
      @tours = Tour.limit(6)
    end
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tours }
    end
  end

  # GET /tours/1
  # GET /tours/1.json
  def show
    @tour = Tour.find(params[:id])
    @scheduled_tours = @tour.scheduled_tours
    @x = @tour.venues
    @lats = []
    @lons = []
    @names = []
    @x.each do |v|
      @lats.push(v.lat)
      @lons.push(v.lon)
      @names.push(v.name)
    end
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @tour }
    end
  end

  # GET /tours/new
  # GET /tours/new.json
  def new
    @tour = Tour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @tour }
    end
  end

  # GET /tours/1/edit
  def edit
    @tour = Tour.find(params[:id])
  end

  # POST /tours
  # POST /tours.json
  def create
    @tour = current_user.tours.new(params[:tour])

    respond_to do |format|
      if @tour.save
        params[:venues].each do |v|
          @venue = @tour.venues.create(v)
          @venue.tour_id = @tour.id
          @venue.save
        end
        format.html { redirect_to @tour, notice: 'Tour was successfully created.' }
        format.json { render json: @tour, status: :created, location: @tour }
      else
        format.html { render action: "new" }
        format.json { render json: @tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /tours/1
  # PUT /tours/1.json
  def update
    @tour = Tour.find(params[:id])

    respond_to do |format|
      if @tour.update_attributes(params[:tour])
        format.html { redirect_to @tour, notice: 'Tour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tours/1
  # DELETE /tours/1.json
  def destroy
    @tour = Tour.find(params[:id])
    @tour.destroy

    respond_to do |format|
      format.html { redirect_to tours_url }
      format.json { head :no_content }
    end
  end

  # GET /tours/my_tours
  def my_tour
    @tours = current_user.tours
    respond_to do |format|
      #format.html {redirect_to my_tours_url}
      format.json { render json: @tours}
    end

  end
end
