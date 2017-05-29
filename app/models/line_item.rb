class LineItem < ApplicationRecord
  belongs_to :project
  
  def self.import(file)
    spreadsheet = open_spreadsheet(file)
    spreadsheet.default_sheet = spreadsheet.sheets[0]
    # header = spreadsheet.row(1)
    # project = Project.first
    # Row 5 is the first data row from the current spreadsheet
    (5..spreadsheet.last_row).each do |item|
      LineItem.create(
        # project_id: 1,
        trade: "space ghost",
        # trade: spreadsheet.cell('d', item),
        itemCode: spreadsheet.cell('e', item),
        description: spreadsheet.cell('f', item), 
        quantity: spreadsheet.cell('g', item),
        units: spreadsheet.cell('h', item)
      )
      # material.save!
    end
  end


  def self.open_spreadsheet(file)
    case File.extname(file.original_filename)
    when ".csv" then Csv.new(file.path, nil, :ignore)
    when ".xls" then Excel.new(file.path, nil, :ignore)
    # also uses .xlsm files
    when ".xlsx" then Roo::Excelx.new(file.path)
    when ".xlsm" then Roo::Excelx.new(file.path)
    else raise "unknown file type: #{file.original_filename}"
    end
  end
end
