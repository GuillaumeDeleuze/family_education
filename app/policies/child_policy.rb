class ChildPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    if user.admin?
      true
    elsif user
      true
    else
      false
    end
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
