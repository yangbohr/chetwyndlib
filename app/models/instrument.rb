class Instrument < ActiveRecord::Base
=begin
  searchable do
    text :tag_no
    text :description
    text :model_no
    text :service_name
  end
=end
end
