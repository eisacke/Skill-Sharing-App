json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :title, :teacher_id
  json.url lesson_url(lesson, format: :json)
end
