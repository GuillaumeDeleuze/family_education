class PartnairsController < ApplicationController
  def index
    @partnairs = policy_scope(Partnair)
  end

  def show
  end
end
