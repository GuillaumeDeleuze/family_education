class FamilyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index
    user.admin?
  end

  def show
    user.admin?
  end

  def create
    true
  end
end
