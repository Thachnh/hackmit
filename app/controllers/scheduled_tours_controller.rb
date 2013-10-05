class ScheduledToursController < ApplicationController
  # GET /scheduled_tours
  # GET /scheduled_tours.json
  def index
    @scheduled_tours = ScheduledTour.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @scheduled_tours }
    end
  end

  # GET /scheduled_tours/1
  # GET /scheduled_tours/1.json
  def show
    @scheduled_tour = ScheduledTour.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @scheduled_tour }
    end
  end

  # GET /scheduled_tours/new
  # GET /scheduled_tours/new.json
  def new
    @scheduled_tour = ScheduledTour.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @scheduled_tour }
    end
  end

  # GET /scheduled_tours/1/edit
  def edit
    @scheduled_tour = ScheduledTour.find(params[:id])
  end

  # POST /scheduled_tours
  # POST /scheduled_tours.json
  def create
    @scheduled_tour = ScheduledTour.new(params[:scheduled_tour])

    respond_to do |format|
      if @scheduled_tour.save
        format.html { redirect_to @scheduled_tour, notice: 'Scheduled tour was successfully created.' }
        format.json { render json: @scheduled_tour, status: :created, location: @scheduled_tour }
      else
        format.html { render action: "new" }
        format.json { render json: @scheduled_tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /scheduled_tours/1
  # PUT /scheduled_tours/1.json
  def update
    @scheduled_tour = ScheduledTour.find(params[:id])

    respond_to do |format|
      if @scheduled_tour.update_attributes(params[:scheduled_tour])
        format.html { redirect_to @scheduled_tour, notice: 'Scheduled tour was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @scheduled_tour.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scheduled_tours/1
  # DELETE /scheduled_tours/1.json
  def destroy
    @scheduled_tour = ScheduledTour.find(params[:id])
    @scheduled_tour.destroy

    respond_to do |format|
      format.html { redirect_to scheduled_tours_url }
      format.json { head :no_content }
    end
  end
end
