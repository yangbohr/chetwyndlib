class Drawing < ActiveRecord::Base
  searchable do
    text :title
    text :area
  end
end
