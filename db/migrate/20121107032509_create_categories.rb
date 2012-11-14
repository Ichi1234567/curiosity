class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name
      t.text :description
      t.string :image

      t.timestamps
    end
    add_column :posts, :category_id, :integer
    add_index :posts, :category_id
  end
end
