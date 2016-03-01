class Inventory < ActiveRecord::Base
 require 'csv'
def self.import(file)
    # a block that runs through a loop in our CSV data
    CSV.foreach(file.path, headers: true) do |row| 
      # creates a user for each row in the CSV file
      Inventory.create! row.to_hash 
    end 
  end 
end
