class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :name
      t.string :description

      t.timestamps null: false
    end
    add_index :lessons, :name, unique: true
  end
end
