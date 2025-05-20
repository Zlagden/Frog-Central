# app/controllers/flats_controller.rb
class FlatsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create]

  def index
    @flats = Flat.all
  end

  def create
    @flat = current_user.flats.build(flat_params)
    if @flat.save
      redirect_to flats_path, notice: "Flat listed successfully."
    else
      render :new, status: :unprocessable_entity
    end
  end
end
