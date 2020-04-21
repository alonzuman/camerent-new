class BookingsPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  # WRONG NAME NEED TO DELETE
end
