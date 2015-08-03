json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :title, :description, :location, :cost, :teacher_id_id
  json.url lesson_url(lesson, format: :json)
end
