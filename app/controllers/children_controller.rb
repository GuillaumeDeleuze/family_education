class ChildrenController < ApplicationController
  def index
    @childrens = policy_scope(Child.where(family: current_user.family))
  end

  def show
    @child = Child.find(params[:id])
    authorize @child
  end

  def new
    @child = Child.new
    authorize @child
  end

  def create
    @child = Child.new(params[:child])
    @child.save
    authorize @child
    redirect_to childrens_path
  end

  private

  # def children_params
  #   params.require(:children).permit
  # end
end
