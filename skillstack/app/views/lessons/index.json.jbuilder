json.array!(@lessons) do |lesson|
  json.extract! lesson, :id, :title, :description, :image_one, :image_two, :image_three, :location, :cost, :teacher_id, :category_id
  json.url lesson_url(lesson, format: :json)
end
