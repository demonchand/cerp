class Role < ActiveRecord::Base
	attr_accessible :name, :description, :user_ids
  has_and_belongs_to_many :users
end
