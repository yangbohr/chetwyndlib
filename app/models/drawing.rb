class Drawing < ActiveRecord::Base
  searchable do
    text :title
  end
end
