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
    @children = User.where(family: current_user.family).where(child: true)
    @mission = Mission.new
    authorize @mission
  end

  def create
    @mission = Mission.new(mission_params)
    @family = Family.find(params[:family_id])
    authorize @mission
    if @mission.save
      redirect_to family_missions_path(current_user.family.id)
      flash[:alert] = "Votre mission a bien été créée"

    else
      puts "fail"
      render new
    end
  end

  def edit
  end

  def update
    # @mission.update(params[:mission])
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
    params.require(:mission).permit(:user_id, :start_at, :end_at, :point, :name, :status)
  end
end
