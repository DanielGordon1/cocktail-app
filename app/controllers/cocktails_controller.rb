class CocktailsController < ApplicationController
  before_action :set_cocktails, only: [:show, :edit, :update, :destroy]

  def index
    @cocktails = Cocktail.all
  end

  def show
    @cocktail
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else 
      render :new
    end
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name, :address, :category, :phone_number)
  end

  def set_cocktail
    @cocktail = cocktail.find(params[:id])
  end
end

