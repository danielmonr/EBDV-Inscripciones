json.array!(@outcomes) do |outcome|
  json.extract! outcome, :id, :amount, :owner, :description
  json.url outcome_url(outcome, format: :json)
end
