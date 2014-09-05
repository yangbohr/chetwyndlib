json.array!(@equipment_manuals) do |equipment_manual|
  json.extract! equipment_manual, :id, :title, :equipment_number, :company, :model
  json.url equipment_manual_url(equipment_manual, format: :json)
end
