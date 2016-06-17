class Inventory < ActiveRecord::Base
has_paper_trail
require 'csv'
def self.to_csv(options = {})
  CSV.generate(options) do |csv|
    csv.add_row column_names
    all.each do |inventory|
      values = inventory.attributes.values
      csv.add_row values
    end
  end
end
def self.import(file)
    # a block that runs through a loop in our CSV data
    CSV.foreach(file.path, headers: true) do |row| 
      # creates a user for each row in the CSV file
      Inventory.create! row.to_hash 
    end 
  end 
end
