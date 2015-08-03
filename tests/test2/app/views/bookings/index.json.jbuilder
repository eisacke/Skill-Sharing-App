json.array!(@bookings) do |booking|
  json.extract! booking, :id, :date, :time, :student_id, :lesson_id
  json.url booking_url(booking, format: :json)
end
