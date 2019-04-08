class RewardsController < ApplicationController
  before_action :set_reward, only: [:show, :edit, :update, :destroy]

  def index
    @family = User.where(family: current_user.family)
    @family_rewards = Reward.where(user: @family)
    @rewards = Reward.where(family: current_user.family)
    @rewards = policy_scope(current_user.rewards)
  end

  def show
  end

  def new
    @family = Family.find(params[:family_id])
    @reward = Reward.new
    authorize @reward
  end

  def create
    @reward = Reward.new
    @family = Family.find(params[:family_id])
    @reward = current_user.family.rewards.build(rewards_params)
    authorize @reward
    if @reward.save
      puts "Yeah"
      redirect_to new_family_reward_path(current_user.family.id)
    else
      puts "fail"
      render new
    end
  end

  def edit
  end

  def update
    @reward.update(params[:id])
    @reward.update(reward_params)
  end

  def destroy
    @reward.destroy
  end

  private

  def set_reward
    @reward = Reward.find(params[:id])
    authorize @reward
  end

  def rewards_params
    params.require(:reward).permit(:family_id, :name, :price)
  end
end
