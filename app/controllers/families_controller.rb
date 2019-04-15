class FamiliesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  skip_after_action :verify_authorized

  def new
    @family = Family.new
  end

  def create
    @family = Family.new(family_params)
    if @family.save
      redirect_to new_user_registration_path
    end
  end

  private

  def family_params
    params.require(:family).permit(:name)
  end
end
