class RewardsController < ApplicationController
  before_action :set_reward, only: [:show, :edit, :update, :destroy]

  def index
    @rewards = Reward.where(family: current_user.family)
  end

  def show
  end

  def new
    @family = Family.find(params[:family_id])
    @reward = Reward.new
  end

  def create
    @reward = Reward.new
    @reward.family = Family.find(params[:family_id])
    @reward.save
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
  end

  def rewards_params
    params.require(:reward).permit(:family_id, :name, :price)
  end
end
