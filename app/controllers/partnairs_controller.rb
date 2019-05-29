class PartnairsController < ApplicationController
  def index
    @partnairs = policy_scope(Partnair)
    @wave_bx = Partnair.find_by_name("Wave Surf Café")
    @arkose_bx = Partnair.find_by_name("Arkose Bordeaux")
    @escape_hunt_bx = Partnair.find_by_name("Escape Hunt")
  end

  def show
    @partnair = Partnair.find(params[:id])
    authorize @partnair
  end

  def new
    authorize @partair
  end

  def create
    authorize @partnair
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
