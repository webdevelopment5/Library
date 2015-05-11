json.array!(@loans) do |loan|
  json.extract! loan, :id, :book, :user, :physical, :loandate, :loanreturn
  json.url loan_url(loan, format: :json)
end
