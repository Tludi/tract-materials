class Material < ApplicationRecord

  def self.import(file)
    spreadsheet = open_spreadsheet(file)
    header = spreadsheet.row(1)
    (2..spreadsheet.last_row).each do |item|
      Material.create(
        trade: spreadsheet.cell('A', item),
        itemCode: spreadsheet.cell('b', item),
        description: spreadsheet.cell('c', item), 
        itemUnit: spreadsheet.cell('d', item),
        unitPrice: spreadsheet.cell('e', item), 
        orderUnit: spreadsheet.cell('f', item),
        conversionRate: spreadsheet.cell('g', item), 
        priceDate: spreadsheet.cell('h', item), 
        priceAge: spreadsheet.cell('i', item), 
        markup: spreadsheet.cell('j', item), 
        wastePercent: spreadsheet.cell('k', item), 
        wasteQuantity: spreadsheet.cell('l', item), 
        jobCostCode: spreadsheet.cell('m', item),
        productionRate: spreadsheet.cell('n', item), 
        note: spreadsheet.cell('o', item),  
        laborClassCode: spreadsheet.cell('p', item), 
        laborClassRate: spreadsheet.cell('q', item)
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
