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
    @children = User.where(family: current_user.family).where(child: true)
    authorize @mission
  end

  def create
    @mission = Mission.new(mission_params)
    @family = Family.find(params[:family_id])
    @family_rewards = Reward.where(user: @family)
    authorize @mission
    if @mission.save
      if @family_rewards.last == nil
        redirect_to root_path
        flash[:notice] = "Votre mission a bien été créée"
      else
        redirect_to family_missions_path(current_user.family.id)
        flash[:notice] = "Votre mission a bien été créée"
      end
    else
      puts "fail"
      render new
    end
  end

  def edit
    @children = User.where(family: current_user.family).where(child: true)
  end

  def update
    @mission.update(mission_params)
    @user = @mission.user
    if current_user.child?
      redirect_to family_missions_path(current_user.family.id)
      flash[:notice] = "Le grand chef va bientôt venir vérifier tout ça"
    else
      if @mission.done?
        @mission.user.point += @mission.point
        @user.save
        redirect_to family_missions_path(current_user.family.id)
        flash[:notice] = "Votre sentence est envoyée"
      else
        redirect_to family_missions_path(current_user.family.id)
        flash[:notice] = "Votre sentence est envoyée"
      end
    end
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
