json.array!(@people) do |person|
  json.extract! person, :id, :firstname, :lastname, :age
  json.url person_url(person, format: :json)
end
