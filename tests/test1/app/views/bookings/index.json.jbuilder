json.array!(@bookings) do |booking|
  json.extract! booking, :id, :lesson_id_id, :date, :time, :confirmed, :teacher_id_id, :student_id_id
  json.url booking_url(booking, format: :json)
end
