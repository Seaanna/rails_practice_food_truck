class TruckCategoriesController < ApplicationController
  before_action :set_truck_category, only: [:show, :edit, :update, :destroy]

  # GET /truck_categories
  # GET /truck_categories.json
  def index
    @truck_categories = TruckCategory.all
  end

  # GET /truck_categories/1
  # GET /truck_categories/1.json
  def show
  end

  # GET /truck_categories/new
  def new
    @truck_category = TruckCategory.new
  end

  # GET /truck_categories/1/edit
  def edit
  end

  # POST /truck_categories
  # POST /truck_categories.json
  def create
    @truck_category = TruckCategory.new(truck_category_params)

    respond_to do |format|
      if @truck_category.save
        format.html { redirect_to @truck_category, notice: 'Truck category was successfully created.' }
        format.json { render :show, status: :created, location: @truck_category }
      else
        format.html { render :new }
        format.json { render json: @truck_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /truck_categories/1
  # PATCH/PUT /truck_categories/1.json
  def update
    respond_to do |format|
      if @truck_category.update(truck_category_params)
        format.html { redirect_to @truck_category, notice: 'Truck category was successfully updated.' }
        format.json { render :show, status: :ok, location: @truck_category }
      else
        format.html { render :edit }
        format.json { render json: @truck_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /truck_categories/1
  # DELETE /truck_categories/1.json
  def destroy
    @truck_category.destroy
    respond_to do |format|
      format.html { redirect_to truck_categories_url, notice: 'Truck category was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_truck_category
      @truck_category = TruckCategory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def truck_category_params
      params.require(:truck_category).permit(:truck_id, :category_id)
    end
end
