class CreateBookings < ActiveRecord::Migration
  def change
    create_table :bookings do |t|
      t.integer :lesson_id
      t.integer :student_id
      t.string :time
      t.string :date

      t.timestamps null: false
    end
  end
end
