json.array!(@attachments) do |attachment|
  json.extract! attachment, :id, :file_type, :attachment, :parent_id
  json.url attachment_url(attachment, format: :json)
end
