class HeroinesController < ApplicationController

  def index
    @heroines = Heroine.all
  end

  def show
    @heroine = Heroine.find_by_id(params[:id])
  end

  def new
    @heroine = Heroine.new
  end

  def create
    @heroine = Heroine.new(heroine_params)
        if @heroine.valid?
           @heroine.save
          redirect heroine_path (@heroine)
        else
          render :new
        end
    end


  def update
    @heroine = Heroine.find_by_id(params[:id])
        if @heroine.update(heroine_params)
          redirect heroine_path (@heroine)
        else
          render :new
  end
end

private

  def heroine_params
    params.require(:heroine).permit(:name, :super_name, :power_id)
  end
end
