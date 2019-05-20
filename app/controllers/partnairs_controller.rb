class PartnairsController < ApplicationController
  def index
    @partnairs = policy_scope(Partnair)
  end

  def show
    @partnair = Partnair.find(params[:id])
    authorize @partnair
  end

  def new
    authorize @partair
  end

  def create
    authorize @partnair
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
