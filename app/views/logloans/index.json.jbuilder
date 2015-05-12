json.array!(@logloans) do |logloan|
  json.extract! logloan, :id, :user_id, :book_id, :physical, :loandate, :loanreturn
  json.url logloan_url(logloan, format: :json)
end
