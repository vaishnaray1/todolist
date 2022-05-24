class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.references :owner, null: false, foreign_key: {to_table: :users}
      t.references :category, null: false, foreign_key: true
      t.string :priority, default: "Normal"
      t.boolean :completed, default: False
      t.datetime :due_date
      t.text :description
      t.integer :interactions_count, default: 0

      t.timestamps

    end
  end
end
