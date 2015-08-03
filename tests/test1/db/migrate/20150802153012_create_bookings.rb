class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.references :lesson_id, index: true, foreign_key: true
      t.string :date
      t.string :time
      t.boolean :confirmed
      t.references :teacher_id, index: true, foreign_key: true
      t.references :student_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
