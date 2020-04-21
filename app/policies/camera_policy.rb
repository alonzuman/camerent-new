class CameraPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end

    def new?
    end

    def create?
    end
    
    def destroy?
      record.user == user
    end
  end
end
