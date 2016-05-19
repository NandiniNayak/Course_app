json.array!(@profiles) do |profile|
  json.extract! profile, :id, :user_id, :username, :website, :bio, :profile_pic
  json.url profile_url(profile, format: :json)
end
