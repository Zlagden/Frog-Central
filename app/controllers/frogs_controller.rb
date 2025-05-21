# app/controllers/flats_controller.rb
class FrogsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @frogs = Frog.all

  end

  def show
    @frog = Frog.find(params[:id])
    @booking = Booking.new
  end

  def create
    @frog = current_user.frogs.build(frog_params)
    if @frog.save
      redirect_to frogs_path, notice: "Frog listed successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end
end
