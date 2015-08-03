json.array!(@bookings) do |booking|
  json.extract! booking, :id, :lesson_id, :student_id, :time, :date
  json.url booking_url(booking, format: :json)
end
