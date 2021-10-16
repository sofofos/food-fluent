class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def accept?
    true
  end

  def decline?
    true
  end
end
