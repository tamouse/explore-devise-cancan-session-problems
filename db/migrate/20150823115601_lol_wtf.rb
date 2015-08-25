class LolWtf < ActiveRecord::Migration
  def change
    add_column :users, :lolwtf, :integer, array: true, lolwtf: false
  end
end
