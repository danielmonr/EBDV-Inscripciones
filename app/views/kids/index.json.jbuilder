json.array!(@kids) do |kid|
  json.extract! kid, :id, :name, :lastf, :lastm, :age, :nmother, :nfather, :address, :phone, :exphone, :celphone
  json.url kid_url(kid, format: :json)
end
