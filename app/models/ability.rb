class Ability < ActiveRecord::Base
  include CanCan::Ability
  def initialize(user)
    can :read, :all
=begin
    case user
      when user.roles == "admin"
        can :mange, :all
      when user.roles == "moderator"
        can :update, :all
        can :read, :all
        cannot :destroy, :all
      when user.roles == "guest"
        can :read, :all
        cannot :update, :all
        cannot :destroy, :all
    end
=end
  end
end