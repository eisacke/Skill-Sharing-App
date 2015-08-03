class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.string :date
      t.string :time
      t.integer :student_id
      t.integer :lesson_id

      t.timestamps null: false
    end
  end
end
