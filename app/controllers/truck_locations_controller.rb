class TruckLocationsController < ApplicationController
  before_action :set_truck_location, only: [:show, :edit, :update, :destroy]

  # GET /truck_locations
  # GET /truck_locations.json
  def index
    @truck_locations = TruckLocation.all
  end

  # GET /truck_locations/1
  # GET /truck_locations/1.json
  def show
  end

  # GET /truck_locations/new
  def new
    @truck_location = TruckLocation.new
  end

  # GET /truck_locations/1/edit
  def edit
  end

  # POST /truck_locations
  # POST /truck_locations.json
  def create
    @truck_location = TruckLocation.new(truck_location_params)

    respond_to do |format|
      if @truck_location.save
        format.html { redirect_to @truck_location, notice: 'Truck location was successfully created.' }
        format.json { render :show, status: :created, location: @truck_location }
      else
        format.html { render :new }
        format.json { render json: @truck_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /truck_locations/1
  # PATCH/PUT /truck_locations/1.json
  def update
    respond_to do |format|
      if @truck_location.update(truck_location_params)
        format.html { redirect_to @truck_location, notice: 'Truck location was successfully updated.' }
        format.json { render :show, status: :ok, location: @truck_location }
      else
        format.html { render :edit }
        format.json { render json: @truck_location.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /truck_locations/1
  # DELETE /truck_locations/1.json
  def destroy
    @truck_location.destroy
    respond_to do |format|
      format.html { redirect_to truck_locations_url, notice: 'Truck location was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_truck_location
      @truck_location = TruckLocation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def truck_location_params
      params.require(:truck_location).permit(:truck_id, :location_id)
    end
end
