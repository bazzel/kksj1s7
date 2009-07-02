class CreateProjectmanagers < ActiveRecord::Migration
  def self.up
    create_table :projectmanagers do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.integer :project_id
      t.timestamps
    end
  end
  
  def self.down
    drop_table :projectmanagers
  end
end
