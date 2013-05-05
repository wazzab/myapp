class CategoriesPosts < ActiveRecord::Migration
  def change
    create_table :categories_posts, :id => false do |t|
      t.integer :categories_id
      t.integer :post_id
    end
    add_index :categories_posts, [:categories_id, :post_id]
  end
end
