class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.create(strong_params)
    if @heroine.valid?
      redirect_to @heroine
    else
      render :new
    end
  end

  private

  def strong_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end

end
