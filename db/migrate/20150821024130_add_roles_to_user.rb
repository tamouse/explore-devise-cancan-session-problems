class AddRolesToUser < ActiveRecord::Migration
  def change
    add_column :users, :admin, :boolean, default: false, null: false
    add_column :users, :active, :boolean, default: true, null: false
  end
end
