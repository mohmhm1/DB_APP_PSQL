json.array!(@services) do |service|
  json.extract! service, :id, :date_of_service, :customer, :complaint, :resolved
  json.url service_url(service, format: :json)
end
