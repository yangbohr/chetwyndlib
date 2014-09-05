task :populate_database => :environment do
  require 'spreadsheet'
  
  book = Spreadsheet.open 'di.xls'
  book.worksheets.each do |sheet| 
    sheet.each do |row|
      next if row[1] == 'area'
      drawing = Drawing.new
      drawing.original_order = row[0]
      drawing.area = row[1]
      drawing.discipline = row[2]
      drawing.order = row[3]
      drawing.tembec_drawing = row[4]
      drawing.vender = row[5]
      drawing.sheet_number = row[7]
      drawing.revision = row[8]
      drawing.title = row[9]
      drawing.date = row[10].to_s.to_date rescue nil
      drawing.equipment_number = row[11]
      drawing.cad = true if row[12] == 'yes'
      drawing.paper = true if row[13] == 'yes'
      drawing.notes = row[14]
      drawing.hanging = row[15]
      drawing.save
    end
  end

end
