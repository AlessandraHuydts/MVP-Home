class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end
  def index?
    true
  end
  def update?
    true
  end

  def show?
    true
  end

  def cuisines_show?
    true
  end

  def cuisines_edit?
    true
  end
  def interests_show?
    true
  end

  def interests_edit?
    true
  end

end
