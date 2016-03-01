json.array!(@inventories) do |inventory|
  json.extract! inventory, :id, :Product, :Category, :Location, :SerialNumber, :LotNumber, :ExpirationDate, :Quantity, :Notes
  json.url inventory_url(inventory, format: :json)
end
