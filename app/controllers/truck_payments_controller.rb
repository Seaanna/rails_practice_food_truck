class TruckPaymentsController < ApplicationController
  before_action :set_truck_payment, only: [:show, :edit, :update, :destroy]

  # GET /truck_payments
  # GET /truck_payments.json
  def index
    @truck_payments = TruckPayment.all
  end

  # GET /truck_payments/1
  # GET /truck_payments/1.json
  def show
  end

  # GET /truck_payments/new
  def new
    @truck_payment = TruckPayment.new
  end

  # GET /truck_payments/1/edit
  def edit
  end

  # POST /truck_payments
  # POST /truck_payments.json
  def create
    @truck_payment = TruckPayment.new(truck_payment_params)

    respond_to do |format|
      if @truck_payment.save
        format.html { redirect_to @truck_payment, notice: 'Truck payment was successfully created.' }
        format.json { render :show, status: :created, location: @truck_payment }
      else
        format.html { render :new }
        format.json { render json: @truck_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /truck_payments/1
  # PATCH/PUT /truck_payments/1.json
  def update
    respond_to do |format|
      if @truck_payment.update(truck_payment_params)
        format.html { redirect_to @truck_payment, notice: 'Truck payment was successfully updated.' }
        format.json { render :show, status: :ok, location: @truck_payment }
      else
        format.html { render :edit }
        format.json { render json: @truck_payment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /truck_payments/1
  # DELETE /truck_payments/1.json
  def destroy
    @truck_payment.destroy
    respond_to do |format|
      format.html { redirect_to truck_payments_url, notice: 'Truck payment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_truck_payment
      @truck_payment = TruckPayment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def truck_payment_params
      params.require(:truck_payment).permit(:truck_id, :payment_id)
    end
end
