class CreateOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :address
      t.integer :zipCode
      t.string :website
      t.string :facebook
      t.string :twitter

      t.timestamps
    end
  end
end
