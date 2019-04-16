class UsersController < ApplicationController
  def index
    @users = policy_scope(User)
    @family = User.where(family: current_user.family)
    @family_missions = Mission.where(user: @family)
    @family_rewards = Reward.where(user: @family)
  end

  def new
    @child = User.new
    authorize @child
  end

  def create
    @child = User.new(params[:child])
    @child.save
    authorize @child
    redirect_to childrens_path
  end
end
