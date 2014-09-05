json.array!(@projects) do |project|
  json.extract! project, :id, :company, :year, :title, :description, :prepared_by, :area
  json.url project_url(project, format: :json)
end
