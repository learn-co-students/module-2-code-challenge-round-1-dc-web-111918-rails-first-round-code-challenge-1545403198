class HeroinesController < ApplicationController
  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find(params[:id])
  end

  def new
    @heroine = Heroine.new
    @heroine.save
  end

  def create
    heroine = Heroine.new(strong_params)
    heroine.save
    if heroine.valid?
      redirect_to heroine_path(heroine)
    else
      render :new
    end
  end

  private

  def strong_params
    params.require(:heroine).permit(:super_name, :name, :power_id)
  end
end
