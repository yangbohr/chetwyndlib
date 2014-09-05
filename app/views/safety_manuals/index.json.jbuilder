json.array!(@safety_manuals) do |safety_manual|
  json.extract! safety_manual, :id, :title
  json.url safety_manual_url(safety_manual, format: :json)
end
