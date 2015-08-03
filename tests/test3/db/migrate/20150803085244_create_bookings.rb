class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :date
      t.integer :lesson_id
      t.integer :student_id

      t.timestamps null: false
    end
  end
end
