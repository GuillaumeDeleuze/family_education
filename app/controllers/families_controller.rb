class FamiliesController < ApplicationController
  def new
    @family = Family.new
  end

  def create
    @family = Family.new
    @family.user = User.find(current_user.id)
    if @family.save
      redirect_to family_children_path(@family)
    end
  end
end
