class CreateJoinTableCategoriesOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_join_table :categories, :organizations do |t|
      t.index [:category_id, :organization_id]
      t.index [:organization_id, :category_id]
    end
  end
end
