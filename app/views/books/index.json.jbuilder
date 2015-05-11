json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :isbn, :physical, :electronical
  json.url book_url(book, format: :json)
end
