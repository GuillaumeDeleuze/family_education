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
    record.family.user_id == user.id
  end

  def create?
    true
  end
end
