class RoomRentalsController < ApplicationController
  before_action :set_room_rental, only: [:show, :edit, :update, :destroy]

  # GET /room_rentals
  # GET /room_rentals.json
  def index
    @room_rentals = RoomRental.all
  end

  # GET /room_rentals/1
  # GET /room_rentals/1.json
  def show
  end

  # GET /room_rentals/new
  def new
    @room_rental = RoomRental.new
  end

  # GET /room_rentals/1/edit
  def edit
  end

  # POST /room_rentals
  # POST /room_rentals.json
  def create
    @room_rental = RoomRental.new(room_rental_params)

    respond_to do |format|
      if @room_rental.save
        format.html { redirect_to @room_rental, notice: 'Room rental was successfully created.' }
        format.json { render :show, status: :created, location: @room_rental }
      else
        format.html { render :new }
        format.json { render json: @room_rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room_rentals/1
  # PATCH/PUT /room_rentals/1.json
  def update
    respond_to do |format|
      if @room_rental.update(room_rental_params)
        format.html { redirect_to @room_rental, notice: 'Room rental was successfully updated.' }
        format.json { render :show, status: :ok, location: @room_rental }
      else
        format.html { render :edit }
        format.json { render json: @room_rental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room_rentals/1
  # DELETE /room_rentals/1.json
  def destroy
    @room_rental.destroy
    respond_to do |format|
      format.html { redirect_to room_rentals_url, notice: 'Room rental was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room_rental
      @room_rental = RoomRental.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def room_rental_params
      params.require(:room_rental).permit(:user_id, :room_id, :date, :start_time, :end_time, :note, :paid_amount)
    end
end
