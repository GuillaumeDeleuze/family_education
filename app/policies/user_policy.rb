class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def show?
    record.family == user.family
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
end
