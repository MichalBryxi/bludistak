class CreateGrantsTable < ActiveRecord::Migration
  def change
    create_table :grants do |t|
      t.integer "project_id"
      t.integer "worm_id"
      t.integer "user_id"
      
      t.timestamps 
    end
  end
end
