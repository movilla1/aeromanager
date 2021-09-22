# Copyright (c) 2021 by Mario O. Villarroel - ElcanSoftware
class SuperadminPolicy < ApplicationPolicy
  class Scope < Scope
    def index?
      true
    end

    def show?
      true
    end

    def create?
      true
    end

    def new?
      create?
    end

    def update?
      true
    end

    def edit?
      update?
    end

    def destroy?
      true
    end

    def resolve
      scope.all
    end
  end
end
