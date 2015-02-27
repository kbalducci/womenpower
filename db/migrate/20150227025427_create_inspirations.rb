class CreateInspirations < ActiveRecord::Migration
  def change
    create_table :inspirations do |t|
      t.text :quote, null: false
      t.string :keyword, null: false
      t.string :person, null: false
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :inspirations, :users
  end
end
