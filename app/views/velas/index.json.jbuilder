json.array!(@velas) do |vela|
  json.extract! vela, :id, :Date, :Via, :person, :Organization, :FAS, :FSE, :code, :Instrument, :Description, :Diagnosis, :resolved, :closed
  json.url vela_url(vela, format: :json)
end
