class PartnairsController < ApplicationController
  def index
    @partnairs = Partnair.all
  end

  def show
  end
end
