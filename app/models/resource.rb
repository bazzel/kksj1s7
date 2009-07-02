class Resource < ActiveRecord::Base
  belongs_to :project
  belongs_to :user
  
  acts_as_list :scope => :project
  
end
