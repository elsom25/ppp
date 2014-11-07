class UserPolicy < ApplicationPolicy
  def index?   ; true ; end
  def destroy? ; true ; end
  def update?  ; user == record ; end

  class Scope
    vattr_initialize :user, :scope
    def resolve
      return unless user
      scope.all
    end
  end
end
