class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.references :owner, null: false, foreign_key: {to_table: :users}
      t.references :category, null: false, foreign_key: true
      t.string :priority
      t.string :status
      t.datetime :due_date
      t.text :description
      t.integer :interactions_count

      t.timestamps

    end
  end
end
