class CreateJoinTableCategoriesOrganizations < ActiveRecord::Migration[6.0]
  def change
    create_join_table :categories, :organizations do |t|
      t.index [:category_id, :organization_id]
      t.index [:organization_id, :category_id]
      # t.belongs_to :category
      # t.belongs_to :organization
    end
  end
end
