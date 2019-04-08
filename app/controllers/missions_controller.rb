class MissionsController < ApplicationController
  before_action :set_mission, only: [:show, :edit, :update, :destroy]

  def index
    @family = User.where(family: current_user.family)
    @family_missions = Mission.where(user: @family)
    @missions = Mission.where(family: current_user.family)
    @missions = policy_scope(current_user.missions)
  end

  def show
  end

  def new
    @family = Family.find(params[:family_id])
    @mission = Mission.new
    authorize @mission
  end

  def create
    @mission = Mission.new
    @family = Family.find(params[:family_id])
    @mission = current_user.missions.build(mission_params)
    authorize @mission
    if @mission.save
      flash[:alert] = "Votre mission a bien été créée"
      redirect_to new_family_mission_path(current_user.family.id)
    else
      puts "fail"
      render new
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
    authorize @mission
  end

  def mission_params
    params.require(:mission).permit(:family_id, :start_at, :end_at, :point, :name)
  end
end
