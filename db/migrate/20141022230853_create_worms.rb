class CreateWorms < ActiveRecord::Migration
  def change
    create_table :worms do |t|
      t.string :name
      t.text :description
      t.string :project_id=int

      t.timestamps
    end
  end
end
