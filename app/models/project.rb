class Project < ActiveRecord::Base
  has_many :resources, :order => "position", :dependent => :destroy
  has_many :users, :through => :resources
  has_one :projectmanager, :dependent => :destroy
  accepts_nested_attributes_for :projectmanager
  
  validates_presence_of :name
end
