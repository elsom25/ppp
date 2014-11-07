class PublicPolicy < ApplicationPolicy
  def index?   ; true  ; end
  def show?    ; true  ; end
  def new?     ; true  ; end

  class Scope
    vattr_initialize :user, :scope
    def resolve
      scope.all
    end
  end
end
