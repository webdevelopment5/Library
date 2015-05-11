json.array!(@wishes) do |wish|
  json.extract! wish, :id, :user_id, :book_id
  json.url wish_url(wish, format: :json)
end
