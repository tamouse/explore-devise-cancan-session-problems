class CreateContactInfos < ActiveRecord::Migration
  def change
    create_table :contact_infos do |t|
      t.string :name
      t.string :street
      t.string :other
      t.string :locality
      t.string :region
      t.string :country
      t.string :postal_code
      t.string :email
      t.string :phone
      t.string :web

      t.timestamps null: false
    end
  end
end
