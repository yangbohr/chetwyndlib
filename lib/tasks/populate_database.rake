task :populate_database => :environment do
 # require 'spreadsheet'

  book = Spreadsheet.open 'di.xls'
  book.worksheets.each do |sheet| 
    sheet.each do |row|
      next if row[1] == 'area'
      drawing = Drawing.new
      drawing.original_order = row[0]
      drawing.area = row[1]
      drawing.discipline = row[2]
      drawing.draft_order = row[3]
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

  book = Spreadsheet.open 'ii.xls'
  book.worksheets.each do |sheet| 
    sheet.each do |row|
      next if row[1] == 'Tag No'
      ii = Instrument.new 
      ii.item = row[0].to_i
      ii.tag_no = row[1]
      ii.description = row[2]
      ii.manufacturer = row[3]
      ii.model_no = row[4]
      ii.service_name = row[5]
      ii.io_type = row[6]
      ii.location = row[7]
      ii.instrument_range = row[8]
      ii.setpoint = row[9]
      ii.eng_unit = row[10]
      ii.remark = row[11]
      ii.revision = row[12]
      break if row[0].nil?
    end
  end



end
