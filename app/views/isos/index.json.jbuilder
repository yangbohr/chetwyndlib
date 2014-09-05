json.array!(@isos) do |iso|
  json.extract! iso, :id, :title, :tage
  json.url iso_url(iso, format: :json)
end
