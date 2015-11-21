class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.integer :point
      t.references :user, index: true, foreign_key: true
      t.references :lesson, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :tests, [:user_id, :created_at]
    add_index :tests, [:lesson_id, :created_at]
  end
end
