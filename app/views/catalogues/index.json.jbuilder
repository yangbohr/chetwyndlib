json.array!(@catalogues) do |catalogue|
  json.extract! catalogue, :id, :title, :company, :year
  json.url catalogue_url(catalogue, format: :json)
end
