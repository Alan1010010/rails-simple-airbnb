class FlatsController < ApplicationController
  # before_action :set_flat, :only [:show, :edit, :update, :destroy]

  def index
    @flats = Flat.all
  end

  def show
  end

  def new
    @flat = Flat.new
  end

  def create
    @flat = Flat.new(strong_params)
    if @flat.save
      redirect_to flat_path(@flat)
    else
      render :new
    end
  end

  def edit
  end

  def update
    @flat.update(strong_params)
    redirect_to redirect_to flat_path(@flat)
  end

  def destroy
    @flat.destroy
    redirect_to flats_path
  end

  private

  def strong_params
    params.require(:flat).permit(
      :name,
      :address,
      :description,
      :price_per_night,
      :number_of_guests
      )
  end

  def set_flat
    @flat = Flat.find(strong_params)
  end
end
