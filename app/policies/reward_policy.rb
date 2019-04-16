class RewardPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    record.user.family == user.family
  end

  def update?
    true
  end

  def create?
    if user.admin?
      true
    elsif user
      true
    else
      false
    end
  end

  def destroy?
    if user.admin?
      true
    elsif user
      true
    else
      false
    end
  end
end
