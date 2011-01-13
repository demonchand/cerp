class Project < ActiveRecord::Base
  attr_accessible :user_ids, :name, :description
  has_and_belongs_to_many :users
end
