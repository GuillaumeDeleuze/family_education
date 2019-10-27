class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :analytics]
  skip_after_action :verify_authorized
  def home
  end

  def analytics
    @missions = Mission.all
    @rewards = Reward.all
  end
end
