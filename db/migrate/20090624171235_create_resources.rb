class CreateResources < ActiveRecord::Migration
  def self.up
    create_table :resources do |t|
      t.integer :project_id
      t.integer :user_id
      t.integer :position
      t.timestamps
    end
  end
  
  def self.down
    drop_table :resources
  end
end
