class ValidaceProjektu < ActiveRecord::Migration
  def change
    change_column :projects, :name, :string, :null  => false
    change_column :projects, :description, :text, :null  => false
    change_column :projects, :active, :boolean, :null  => false
  end
end
