class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

  def index
    @bookings = current_user.bookings
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def edit
  end

  def create
     params[:booking][:student_id] = current_user.id
     @booking = Booking.new(booking_params)
     if @booking.save
       redirect_to @booking
     else
       render :new
     end
    end

  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url }
    end
  end

  private
    def set_booking
      @booking = Booking.find(params[:id])
    end

    def booking_params
      params.require(:booking).permit(:lesson_id, :student_id, :time, :date)
    end
end
