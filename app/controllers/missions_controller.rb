class MissionsController < ApplicationController
  before_action :set_mission, only: [:show, :edit, :update, :destroy]

  def index
    @missions = Mission.where(family: current_user.family)
  end

  def show
  end

  def new
    @family = Family.find(params[:family_id])
    @mission = Mission.new
  end

  def create
    @mission = Mission.new
    @family = Family.find(params[:family_id])
    @mission.family = @family
    if @mission.save
      puts "Yeah"
      redirect_to family_missions_path(current_user.family.id)
    end
  end

  def edit
  end

  def update
    @mission.update(params[:id])
    @mission.update(mission_params)
  end

  def destroy
    @mission.destroy
  end

  private

  def set_mission
    @mission = Mission.find(params[:id])
  end

  def mission_params
    params.require(:mission).permit(:family_id, :start_at, :end_at, :point, :name)
  end
end
