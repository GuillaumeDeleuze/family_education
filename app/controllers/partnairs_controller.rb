class PartnairsController < ApplicationController
  def index
    @partnairs = policy_scope(Partnair)
    @so_nice_surf = Partnair.find_by_name("So Nice Surf School")
    @reiv = Partnair.find_by_name("REIV")
    @urban_quest_bx = Partnair.find_by_name("Urban Quest Bordeaux")
    @escape_hunt_bx = Partnair.find_by_name("Escape Hunt Bordeaux")
    @RC_mini_race = Partnair.find_by_name("RC mini race")
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
