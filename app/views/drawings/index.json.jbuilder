json.array!(@drawings) do |drawing|
  json.extract! drawing, :id, :discipline, :order, :tembec_drawing, :vender, :vendor_drawing_number, :sheet_number, :revision, :title, :date, :equipment_number, :cad, :paper, :notes, :hanging
  json.url drawing_url(drawing, format: :json)
end
