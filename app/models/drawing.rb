class Drawing < ActiveRecord::Base

  has_attached_file :attachment
  do_not_validate_attachment_file_type :attachment

=begin
  searchable do
    text :title
    text :area
    text :tembec_drawing
  end
=end


end
