class Instrument < ActiveRecord::Base
  searchable do
    text :tag_no
    text :description
    text :model_no
    text :service_name
  end
end
