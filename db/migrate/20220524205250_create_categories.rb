class CreateCategories < ActiveRecord::Migration[6.1]
  def change
    create_table :categories do |t|
      t.string :title
      t.integer :items_count, default: 0

      t.timestamps
    end
  end
end
