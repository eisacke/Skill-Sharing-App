class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :description
      t.string :location
      t.float :cost
      t.references :teacher_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
