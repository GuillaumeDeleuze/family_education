class UsersController < ApplicationController
  def index
    @users = policy_scope(User)
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
