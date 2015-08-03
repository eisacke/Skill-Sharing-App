json.array!(@users) do |user|
  json.extract! user, :id, :first_name, :second_name, :image, :bio
  json.url user_url(user, format: :json)
end
