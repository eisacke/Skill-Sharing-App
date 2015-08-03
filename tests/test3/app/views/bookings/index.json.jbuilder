json.array!(@bookings) do |booking|
  json.extract! booking, :id, :date, :lesson_id, :student_id
  json.url booking_url(booking, format: :json)
end
