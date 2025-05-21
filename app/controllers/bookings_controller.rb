class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def create
    @frog = Frog.find(params[:frog_id])
    @booking = Booking.new(booking_params)
    @booking.frog = @frog
    @booking.user = current_user

    if @booking.save
      redirect_to frog_path(@frog), notice: "Booking created successfully."
    else
      render "frogs/show", status: :unprocessable_entity
    end
  end
  
  private
  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
