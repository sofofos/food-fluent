class FriendPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end

  def create?
    true
  end

  def update?
    true
  end

  def show?
    true
  end

  def accept?
    update?
  end

  def decline?
    update?
  end
end
