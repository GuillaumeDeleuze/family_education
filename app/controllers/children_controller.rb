class ChildrenController < ApplicationController
  def index
    @childrens = Child.where(family: current_user.family)
  end

  def show
    @child = Child.find(params[:id])
  end

  def new
    @child = Child.new
  end

  def create
    @child = Child.new(params[:child])
    @child.save

    redirect_to childrens_path
  end

  private

  # def children_params
  #   params.require(:children).permit
  # end
end
