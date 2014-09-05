json.array!(@libraries) do |library|
  json.extract! library, :id, :name, :code, :type, :vendor, :description, :location
  json.url library_url(library, format: :json)
end
