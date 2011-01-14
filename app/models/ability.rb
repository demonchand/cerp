class Ability < ActiveRecord::Base
  include CanCan::Ability
  def initialize(user)
    case user
      when user == "admin"
        can :mange, :all
      when user == "moderator"
        can :update, :all
        can :read, :all
        cannot :destroy, :all
      when user == "guest"
        can :read, :all
        cannot :update, :all
        cannot :destroy, :all
    end
  end
end