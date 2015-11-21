class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :content
      t.references :lesson, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :words, [:lesson_id, :created_at]
  end
end
