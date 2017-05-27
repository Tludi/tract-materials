class Material < ApplicationRecord

  def self.import(file)
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |item|
      Material.create(
        itemCode: spreadsheet.cell('A', item),
        description: spreadsheet.cell('B', item), 
        itemUnit: spreadsheet.cell('C', item),
        unitPrice: spreadsheet.cell('D', item), 
        orderUnit: spreadsheet.cell('E', item),
        conversionRate: spreadsheet.cell('F', item), 
        priceDate: spreadsheet.cell('G', item), 
        priceAge: spreadsheet.cell('H', item), 
        markup: spreadsheet.cell('I', item), 
        wastePercent: spreadsheet.cell('J', item), 
        wasteQuantity: spreadsheet.cell('K', item), 
        jobCostCode: spreadsheet.cell('L', item),
        productionRate: spreadsheet.cell('M', item), 
        note: spreadsheet.cell('N', item),  
        laborClassCode: spreadsheet.cell('O', item), 
        laborClassRate: spreadsheet.cell('P', item)
      )
      # material.save!
    end
  end


  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
    when ".csv" then Csv.new(file.path, nil, :ignore)
    when ".xls" then Excel.new(file.path, nil, :ignore)
    when ".xlsx" then Roo::Excelx.new(file.path)
    else raise "unknown file type: #{file.original_filename}"
    end
  end

end
