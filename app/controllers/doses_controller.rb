class DosesController < ApplicationController
  before_action :set_cocktail, only: [:new, :create, :edit, :update]
  before_action :set_dose, only: [:edit, :destroy]

  def new
    @dose = Dose.new
    @dose.cocktail = @cocktail
  end

  def create
    dose = Dose.new(dose_params)
    dose.cocktail = @cocktail
    if dose.save
      redirect_to cocktail_path(dose.cocktail)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end

  def dose_params
    params.require(:dose).permit(:description, :cocktail_id, :ingredient_id)
  end
end
